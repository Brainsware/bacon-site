{% block content %}
	{% for entry in entries %}
		<a href="/blag/show/{{ entry.id }}"><h1>{{ entry.title }}</h1></a>
		{{ entry.content | markdown }}
	{% endfor %}
{% endblock %}
