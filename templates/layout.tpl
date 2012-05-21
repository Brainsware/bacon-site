<!DOCTYPE html>
<html>
	<head>
        <title></title>
        <title>{{ bacon_title }}{% block subtitle %}{% endblock %}</title>

{% block header %}
        <link rel="stylesheet" type="text/css" href="{{ bacon_styles_path }}1140.css" />
        <link rel="stylesheet" type="text/css" href="{{ bacon_styles_path }}bacon.css" />
{% endblock %}
</head>
	<body>
	    <div id="container">
	        <div id="header" class="row">
	            <img src="{{ bacon_images_path }}baconphp.png" alt="bacon PHP" />
	        </div>
	        <div id="navbar">
                <span><a href="">News/About</a></span>
                <span><a href="">How do I do ..?</a></span>
                <span><a href="">Download/Contribute</a></span>
            </div>

            <div id="content" class="row">
                {% block content %}
				{% endblock %}
            </div>

	    	<div id="push"></div>
		</div>

		<div id="footer">
		    bacon PHP brought to you by <a href="http://brainsware.org">brainsware</a> | <a href="http://brainsware.org/imprint.html">Imprint/Impressum</a>
		</div>
	</body>
</html>