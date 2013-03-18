{% block content %}
  <div class="threecol"></div>
	<div class="ninecol last">
		{{ content | markdown }}
	</div>
{% endblock %}
