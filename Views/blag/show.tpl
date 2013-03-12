{% block content %}
		<div>
		<h3>{{ post.title }}</h3>
		{{ post.content | markdown }}
		</div>

		{% if enable_comments %}
			{% if post.comments_enable != 'disabled' %}
				<h6>Comments</h6>
				<form action="/comment/create" method="POST">
					<input type="hidden" name="blag_id" value="{{ post.id }}" />

					<textarea name="comment_content" style="border: 1px solid black;">{{ params.comment_content }}</textarea>
					<br />
					{% if enable_recaptcha %}
						{% if verified == 'false' %}
							Your recaptcha could not be verified.
						{% endif %}

						{{ recaptcha | raw }}
					{% endif %}
					<br />
					<input type="submit" name="comment_create" value="Comment" />
				</form>
				<ul id="comments">
					{% for comment in comments %}
						<li>{{ comment.content }}</li>
					{% endfor %}
				</ul>
			{% endif %}
		{% endif %}
{% endblock %}
