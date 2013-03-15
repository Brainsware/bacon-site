# How do I do ...?

This article gets you started on working with Bacon as quickly as possible and gives you an overview on how to handle common use cases.

## Installation

The bare minimum to get started with Bacon is PHP (>= 5.4.0) and composer. You can either install those from http://php.net/ and http://getcomposer.org/ or via your distribution.
This tutorial will not go into details of how to do that.

Once you have PHP and composer set up, you can create a skeleton project with the following:

```
% ~/src % composer create-project brainsware/bacon-dist CatBlog
```

This will download all the necessary software, and create all important directories and sample configuration files for your new Cat Blog:

```
Installing brainsware/bacon-dist (0.1.0)
  - Installing brainsware/bacon-dist (0.1.0)
    Loading from cache

Created project in CatBlog
Loading composer repositories with package information
Installing dependencies
  - Installing brainsware/php-markdown-extra-extended (dev-master 0.1.0)
    Cloning 0.1.0

  - Installing brainsware/sauce (0.1.0)
    Loading from cache

  - Installing minmb/phpmailer (dev-master df44323)
    Cloning df443234ad0ca10cbf91a0c0a728b256afcab1d1

  - Installing twig/twig (dev-master ba67e2c)
    Cloning ba67e2cf8e2ca6cada1de5a316a724df648c52ac

  - Installing brainsware/bacon (0.1.0)
    Loading from cache

Writing lock file
Generating autoload files
```

XXX: Describe what that software does and what those necessary directories are, and what we can find inside -- is this the right space?

## Configuration

Bacon uses PHP files for storing all of its configurations. This makes it really easy to retrieve them at 

The skeleton project we provide comes with an Intro controller, which is set as the default fallback controller in `Config/Base.php`

The second config file you will want to look at is `Config/Database.php`
Here are the basic options you will want to set for your database:

```
'server'   => 'db.dbznet',  # Enter your server host here
'name'     => 'blogDB',     # The name of your database
'type'     => 'mysql',      # Anything your PDO Installation supports. (http://www.php.net/manual/en/pdo.drivers.php)
'username' => 'blogDBuser', # The username you want to connect to your database with
'password' => 'VryScrPswd', # The password.
```

Bacon cannot, and hence, does not provide default values for these options. If your application
needs a database, you will have to create it and connect Bacon to it via `Config/Database.php`.

## A Blog

The classic project to demonstrate working with a framework is a blog.

### MVC



### Routing

URLs map to controllers and their methods in a very specific way. There is no configuration for routing, as we go convention over configuration.
The base of this convention is the REST principle. A resource maps to a controller and its actions with the HTTP vocabulary. The only thing needed
for introducing a new URL is dropping in a new controller with the same name and implement its actions.

The callable controller actions are:

| Action   | URL                | HTTP Method |
|:---------|:-------------------|:------------|
| #index   | /resource          | GET         |
| #show    | /resource/:id      | GET         |
| #new     | /resource/new      | GET         |
| #create  | /resource/         | POST        |
| #edit    | /resource/:id/edit | GET         |
| #update  | /resource/:id      | PUT (*)     |
| #destroy | /resource/:id      | DELETE (*)  |

 (*) Since browsers only allow GET and POST requests, PUT and DELETE are
 distinguished from a normal POST request by a parameter called "_method".
 It may be embedded in a hidden form field or in the URL as GET parameter.

### presenter


