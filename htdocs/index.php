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

//require_once __DIR__ . '/../../config/bacon.php';

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

# Handle Request - translate from path to normal request, check language, call module.
#Bacon\Request::handleRequest();

#$request = new Bacon\Request(
#	$session,
#	array(
#		'base_uri'        => Config\Base::$base_uri,
#		'base_controller' => Config\Base::$base_controller,
#		'paths'           => array(
#			'styles'  => Config\Base::$styles_path,
#			'images'  => Config\Base::$images_path,
#			'scripts' => Config\Base::$scripts_path
#		)
#	),
#	$log
#);

$params = Ar($_REQUEST);
$params->merge($_ENV);
$params->merge($_SERVER);

$app = new \Bacon\App($config, $session, $log, $params);

$app->prepare(path_info(), http_method());
$app->run();

$baconEnd = microtime();
$baconEnd = explode(' ', $baconEnd);
$baconEnd = $baconEnd[0] + $baconEnd[1];

$log->debug('Script execution time: ' . number_format($baconEnd - $baconStart, 6) . 's');

?>
