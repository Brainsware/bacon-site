<?php

namespace Controllers;

require_once APP_ROOT . '/vendor/brainsware/php-markdown-extra-extended/markdown_extended.php';

class Application extends \Bacon\Controller
{
	public function init ()
	{
		$this->add_filter('markdown', 'MarkdownExtended');
	}
}

?>