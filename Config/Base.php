<?php

namespace Config;

class Base
{
	public static $app = [
		'timezone'        => 'UTC',
		'base_uri'        => '',
		'fallback'        => 'Intro'
	];

	public static $session = [
		'timeout'           => 86400,
		'regeneration_time' => 3600,
		'key'               => 'bacon!',
		'session_handler'   => 'files'
	];

	public static $logging = [
		'level'  => 'info',
		'debug'  => 'screen',
		'driver' => 'syslog'
	];
}

?>
