{% block content %}
  <div class="row narrow" style="min-height: 2em;"><!-- --></div>

  <div class="row narrow blog">
    <article>
      <header>
        <small><time pubdate datetime="{{ post.published_at }}">{{ post.published_at | date('dS \\of F Y') }}</time></small>
        <h2><a href="/news/{{ post.slug }}/">{{ post.title }}</a></h2>
      </header>

      {{ post.content | markdown }}

      <footer>
      </footer>
    </article>
  </div>
{% endblock %}
