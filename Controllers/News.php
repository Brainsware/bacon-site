<?php
/**
 * @package Controllers
 * @subpackage Post
 */

namespace Controllers;

class News extends Application
{
	public function index ()
	{
		$this->posts = \Models\Post::order('published_at', 'DESC');
	}

	public function show ()
	{
		return; # XXX TODO
		$this->post = \Models\Post::find();

		$this->enable_comments = true;

		if (class_exists('\Config\Post')) {
			$this->enable_comments = !(\Config\Post::$enable_comments == false);

		}

		if ($this->enable_comments) {
			$this->getRecaptcha();
			$this->comments = Model\Comment::where(array('Post_id' => $id));
		}
	}

	private function getRecaptcha()
	{
		$this->enable_recaptcha = Lib\Recaptcha::isEnabled('\Config\Post');

		if ($this->enable_recaptcha) {
			$this->recaptcha = Lib\Recaptcha::html();
		}
	}
}

?>
