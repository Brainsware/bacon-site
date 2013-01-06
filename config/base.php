<?php

namespace Config;

$base = array(
	'timezone'        => 'UTC',
	'base_uri'        => '',
	'base_controller' => 'blag',

	'session' => array(
		'timeout'           => 86400,
		'regeneration_time' => 3600,
		'key'               => 'bacon!',
		'session_handler'   => 'files'
	),

	'logs' => array(
		'level'  => 'info',
		'debug'  => 'screen',
		'driver' => 'syslog'
	)
);

?>