<?php

namespace Controllers;

class Articles extends Application
{
	public function init ()
	{
		$this->fork_us = file_get_contents(APP_ROOT . '/Views/Articles/fork-us.markdown');

		parent::init();
	}

	public function index ()
	{
		$this->content = file_get_contents(APP_ROOT . '/Views/Articles/index.markdown');
	}

	public function show ()
	{
		$path = \Sauce\Path::join(APP_ROOT, 'Views/Articles', $this->params->id . '.markdown');

		if (file_exists($path)) {
			$this->content = file_get_contents($path);
		} else {
			return $this->redirect([ '/articles' ]);
		}
	}
}

?>
