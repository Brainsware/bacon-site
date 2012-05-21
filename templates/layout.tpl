<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>{{ bacon_title }}{% block subtitle %}{% endblock %}</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
{% block css %}
	<link rel="stylesheet" type="text/css" href="{{ bacon_styles_path }}layout.css" />
	<link rel="stylesheet" type="text/css" href="{{ bacon_styles_path }}{{ bacon_module }}.css" />
{% endblock %}
{% block js %}
	<script type="text/javascript" src="{{ bacon_scripts_path }}highlight.js/highlight.pack.js"></script>
	<script type="text/javascript">
		hljs.tabReplace = ' ';
		hljs.initHighlightingOnLoad();
	</script>
{% endblock %}
</head>

<body>
	<div id="container">
		<div class="innerPadding">
			<!-- 42. -->
			<div id="header">
				<h1>Awesometastic and Legendary!</h1>
			</div>
			<div id="navigation">
				<div class="innerPadding">
					{% for name, url in navigation %}
						<p><a href="{{ url }}">{{ name }}</a></p>
					{% endfor %}
				</div>
			</div>
			<div id="content">
				<div class="innerPadding">
	{% block content %}
	{% endblock %}
				</div>
			</div>
			<div id="footer">
	{% block footer %}			<p><a href="http://www.brainsware.org">bacon &copy; 2011 Brainsware e.U.</a></p>
	{% endblock %}
			</div>
		</div>
	</div>
</body>

</html>
