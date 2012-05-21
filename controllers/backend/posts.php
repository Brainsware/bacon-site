<?php

namespace Backend;

class Posts extends \Application
{
	public function index ()
	{
		$this->posts = \Model\Blag::select(array('title', 'content'))->order('created', 'DESC');
	}
}

?>
