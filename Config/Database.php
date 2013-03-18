<?php

namespace Config;

class Database
{
	# This is the main database configuration
	public static $main = [
		# optional, defaults to localhost; NOTE: localhost != 127.0.0.1 [Difference: Access-method TCP/Sockets]
		'server'    => '',
		'name'      => '',
		'username'  => '',
		'password'  => '',

		# Anything YOUR PDO installation supports.
		'type'      => 'mysql',
		'persist'   => false,
		
		# Currently only available for MySQL
		'encoding'  => 'utf8',
	];
}

?>
