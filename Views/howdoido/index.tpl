{% block content %}
	<div id="toc" class="threecol">
	    <div class="content">
		    <h2>Contents</h2>
		    {{ toc }}
	    </div>
	</div>
	<div id="howdoido" class="ninecol last">
		{{ content | markdown }}
	</div>
{% endblock %}
