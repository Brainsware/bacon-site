<?php

namespace Models;

class Post extends \Bacon\ORM\Model
{
	public static $table_name = 'post';
	protected static $timestamps = true;

	public function save($options = array())
	{
		if (empty($this->slug)) {
			parent::save($options);

			$this->slug = $this->id . '-' . \Bacon\Util::slugify($this->title);
		}
		parent::save($options);
	}

	public function author ()
	{
		return User::find($this->user_id);
	}
}

?>
