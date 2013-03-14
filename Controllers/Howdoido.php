<?php
/**
 * @package Controllers
 * @subpackage Blag
 */

namespace Controllers;

class HowDoIDo extends Application
{
	public function index ()
	{
		$this->content = file_get_contents(APP_ROOT . '/Views/Howdoido/howdoido.markdown');
	}
}

?>