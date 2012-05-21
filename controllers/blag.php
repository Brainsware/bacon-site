<?php
/**
 * @package Controllers
 * @subpackage Blag
 */

class Blag extends Application
{
	public function index ()
	{
		#$this->entries = Model\Blag::select(array('title', 'content'))->order('created', 'DESC');
		
	}

	public function show ($id)
	{
		$this->post = Model\Blag::find($id);

		$this->enable_comments = true;

		if (class_exists('\Config\Blag')) {
			$this->enable_comments = !(\Config\Blag::$enable_comments == false);

		}

		if ($this->enable_comments) {
			$this->getRecaptcha();
			$this->comments = Model\Comment::where(array('blag_id' => $id));
		}
	}

	private function getRecaptcha()
	{
		$this->enable_recaptcha = Lib\Recaptcha::isEnabled('\Config\Blag');

		if ($this->enable_recaptcha) {
			$this->recaptcha = Lib\Recaptcha::html();
		}
	}
}

?>