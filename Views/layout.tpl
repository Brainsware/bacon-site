<!DOCTYPE html>
<html>
	<head>
    <title>The Bacon PHP Framework {% block subtitle %}{% endblock %}</title>

    {% block header %}
    <link href='http://fonts.googleapis.com/css?family=Chelsea+Market' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet" type="text/css"/>
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
        <div class="twelvecol" id="navbar">
          <span><a href="/news">News</a></span>
          <span><a href="/articles/getting-started/">Getting started</a></span>
          <!--span><a href="/documentation/">Documentation</a></span-->
          <!--span><a href="/sauce">Sauce</a></span-->
          <span><a href="/articles/download">Download</a></span>
          <span><a href="/articles/contribute-support">Contribute &amp; Support</a></span>
        </div>
      </div>

      <div class="row">
      {% block content %}
      {% endblock %}
      </div>

      <div id="push"></div>
    </div>

    <div id="footer">
      <div class="row footer">
        <div>
          <p class="center">
          bacon PHP is brought to you by <a href="http://brainsware.org">brainsware</a>.
          </p>

          <p class="center">
          <a href="http://brainsware.org/imprint.html">Imprint</a>
          </p>
        </div>
      </div>
    </div>
    <script type="text/javascript">
      var _paq = _paq || [];
      _paq.push(["trackPageView"]);
      _paq.push(["enableLinkTracking"]);

      (function() {
        var u=(("https:" == document.location.protocol) ? "https" : "http") + "://stats.esotericsystems.at/";
        _paq.push(["setTrackerUrl", u+"piwik.php"]);
        _paq.push(["setSiteId", "4"]);
        var d=document, g=d.createElement("script"), s=d.getElementsByTagName("script")[0]; g.type="text/javascript";
        g.defer=true; g.async=true; g.src=u+"piwik.js"; s.parentNode.insertBefore(g,s);
      })();
    </script>
  </body>
</html>
