# Object Relational Mapper (ORM)

## Configuration {#config}

Bacon automatically looks for the database configuration in `Config/Database.php`.

```
namespace Config;

class Database
{
	public static $main = [
		'server'   => '', # Enter your server host here
		'name'     => '', # The name of your database
		'type'     => '', # Anything your PDO Installation supports. (http://www.php.net/manual/en/pdo.drivers.php)
		'username' => '', # The username you want to connect to your database with
		'password' => '', # The password.
	];
}
```

## Models {#models}

Say you want to create a model for handling posts in your blog. The simplest form of a model is a class inheriting `\Bacon\ORM\Model` in the namespace `\Models` holding a static variable `$table_name` with the table name.


```
# Models/Post.php
namespace Models;

class Post extends \Bacon\ORM\Model
{
	public static $table_name = 'post';
}
```

The ORM assumes you have certain columns in place, namely:

* `table_name.id`
* `table_name.created_at`
* `table_name.updated_at`

The two columns `created_at` and `updated_at` are automatically filled in on creation and update of a row. If you do not want this, e.g. when you have a simple model for a join table, just add the static variable `$timestamps` with the value `false`:

```
# Models/Post.php

namespace Models;

class Post extends \Bacon\ORM\Model
{
	public static $table_name = 'post';
	public static $timestamps = false;  # Turn off created_at and updated_at support
}
```

In case you have a different primary key than `id`, you can alter this as well:

```
# Models/Post.php

namespace Models;

class Post extends \Bacon\ORM\Model
{
	public static $table_name  = 'post';
	public static $primary_key = 'post_id';  # Change the name of the primary key
}
```

## Retrieving Data {#retrieving-data}

Retrieve a single row with a given primary key value from the database:

```
$post = \Models\Post::find($id);
```

Retrieve a certain amount of rows from the database:

```
$posts = \Models\Post::limit(10)->all();
```

Retrieve a subset based on a condition:

```
$posts = \Models\Post::where('published_at != NULL')->all();
```

Combining the last two:

```
$posts = \Models\Post::where('published_at != NULL')
                     ->limit(10)
					 ->all();
```

The ORM also sports *lazy-loading*. So until you call `all`, `first` or `last`, no query is sent to the database.

## Storing Data {#storing-data}

```
$new_post = new \Models\Post();

$new_post->title = 'Blog title';
$new_post->content = '...';

$new_post->save();

```

## Validation & Error Handling {#validation-error-handling}
