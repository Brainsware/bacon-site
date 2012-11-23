<?php
/**
 * The Brainsware bɐcon web framework
 *
 * As the order of inclusion demands it, the different parts of the system will be included.
 *
 * @package bacon
 *
 * @author Alexander Panek <a.panek@brainsware.org>
 * @author Daniel Shimmy Khalil <d.khalil@brainsware.org>
 * @author Markus Shmafoozius Liebhart <m.liebhart@brainsware.org>
 * @author Igor jMCg Galić <i.galic@brainsware.org>
 * @copyright (c) Brainsware 2006-2011
 *
 * @version 0.10.x
 */

# This is to be left on at all times.
error_reporting(E_ALL | E_STRICT);
ini_set('display_errors', 'stdout');

# Start execution timer
$baconStart = microtime();
$baconStart = explode(' ', $baconStart);
$baconStart = $baconStart[0] + $baconStart[1];

# This will take care of all including.
# So basically, this is the only include/require you will ever see in this code (well, almost).
require __DIR__ . '/../base/include.php';

require \Sauce\Path::join(APP_ROOT, 'config/base.php');

$config = new \Sauce\ImmutableObject($base);

# Set default timezone
date_default_timezone_set(!empty($config->timezone) ? $config->timezone : 'UTC');

# Initialize log handler
$log = new \Bacon\Log();

# The default exception handler needs the log instance, too. See hack in base/include.php.
default_exception_handler($log);

# Enable logging in static-only and singleton classes (ugh..)
Bacon\DB::setLog($log);

# Session Handler
# Initialize the session! Let's rock!
if (is_cli()) {
	$session = new \Sauce\Object();
} else {
	$session = new \Bacon\Session($config->session, $log);
}

$params = Ar($_REQUEST);
$params->mergeF($_ENV);
$params->mergeF($_SERVER);

# PHP's builtin webserver doesn't know FallbackResource. So we have to do it on our
# own in this case.
#
# Check whether given URI maps to a file or is to be handled by us.
if (is_cli_server()) {
	$path = $params->request_uri;

	# Remove any GET parameters (<uri>?foo=bar) if present
	$question_mark = strpos($path, '?');

	if ($question_mark !== false) {
		$path = substr($path, 0, $question_mark);
	}
	
	if (is_file(\Sauce\Path::join(HTDOCS, $path))) {
		return false;
	}

	# We need to reset this since otherwise the SCRIPT_NAME would be set to
	# the current requested URI. Which breaks like.. everything.
	$_SERVER['SCRIPT_NAME'] = __FILE__;
}


# PHP forms the $_FILES array in the following way:
# $_FILES => {
# 	name => [ file1, file2, file3, ... ],
# 	size => [ .... ],
# 	...
#
# So we just transform it to:
#
# $files (\Sauce\Vector) => [
# 	{
# 		name => file1,
# 		size => 1234,
# 		...
# 	},
# 	{ ... }
# ]
#
if (!empty($_FILES)) {
	$files = new \Sauce\Vector();

	foreach ($_FILES as $field => $uploads) {
		$keys = array_keys($uploads);
		$count = count($uploads[$keys[0]]);

		$obj = new \Sauce\Object();

		for ($i = 0; $i < $count; $i++) {
			foreach ($keys as $key) {
				$obj->$key = $uploads[$key][$i];
			}

			$obj->field = $field;
		}

		$files->push($obj);
	}

	$params->files = $files;
}

$app = new \Bacon\App($config, $session, $log, $params);

$app->prepare(path_info(), http_method());
$app->run();

$baconEnd = microtime();
$baconEnd = explode(' ', $baconEnd);
$baconEnd = $baconEnd[0] + $baconEnd[1];

$log->debug('Script execution time: ' . number_format($baconEnd - $baconStart, 6) . 's');

?>
