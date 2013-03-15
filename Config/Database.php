<?php

namespace Config;

class Database
{
	# This is the main database configuration
	public static $main = array (
		# optional, defaults to localhost; NOTE: localhost != 127.0.0.1 [Difference: Access-method TCP/Sockets]
		'server' => 'localhost',
		'name' => 'baconphp.net',
		# Anything YOUR PDO installation supports.
		'type' => 'mysql',
		# Don't use root. Please. (no, a user named urmom with all rights is not better.)
		'username' => 'root',
		'password' => '',
		'persist' => false,
		# only for mysql as of now
		'encoding' => 'utf8',
		);
}

?>