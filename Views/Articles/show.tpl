{% block content %}
	<div id="toc" class="threecol">
	    <div class="content">
		    <h2>Contents</h2>
		    {{ content | markdown | dotoc }}
	    </div>
	</div>
	<div id="howdoido" class="ninecol last article">
		{{ content | markdown }}
	</div>
{% endblock %}
