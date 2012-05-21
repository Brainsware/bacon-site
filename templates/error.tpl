	{% for level in messages %}
	<div id="{% level %}box">
	{% for message in level %}
		<p class="{% level %}title">{% message.title %}</p>
		<p class="{% level %}message">{% message.message %}</p>
	{% endfor %}
	</div>
	{% endfor %}
