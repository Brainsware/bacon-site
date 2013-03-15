<!DOCTYPE html>
<html>
	<head>
    <title>The Bacon PHP Framework {% block subtitle %}{% endblock %}</title>

    {% block header %}
    <link href='http://fonts.googleapis.com/css?family=Chelsea+Market' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/styles/1140.css" />
    <link rel="stylesheet" type="text/css" href="/styles/bacon.css" />
    {% endblock %}
  </head>
	<body>
    <div id="container">
      <div id="header" class="row center">
        <img src="/images/baconphp.png" alt="bacon PHP" />
      </div>
      <div class="row center">
        <div class="onecol"><!-- --></div>

        <div class="tencol" id="navbar">
          <span><a href="/news">News</a></span>
          <span><a href="/howdoido/">How do I ..?</a></span>
          <span><a href="/sauce">Sauce</a></span>
          <span><a href="/download">Download</a></span>
          <span><a href="/contribute">Contribute</a></span>
        </div>

        <div class="onecol last"><!-- --></div>
      </div>

      <div class="row">
      {% block content %}
      {% endblock %}
      </div>

      <div class="push"></div>
    </div>

    <div id="footer">
      <div class="row">
        <div class="onecol"><!-- --></div>
        <div class="tencol">
          <p class="center">
          bacon PHP is brought to you by <a href="http://brainsware.org">brainsware</a>.
          </p>

          <p class="center">
          <a href="http://brainsware.org/imprint.html">Imprint</a>
          </p>
        </div>
        <div class="onecol last"><!-- --></div>
      </div>
    </div>
  </body>
</html>
