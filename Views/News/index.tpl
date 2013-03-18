{% block content %}
  <div class="row narrow">
    <div id="about">
      <p class="hero">
      <em>bacon</em> is a clean, minimalistic and fast MVC framework. Our goal is to ease web development and provide a solid foundation for common use cases.
      </p>

      <p>To get started as quickly as possible head over to our <a href="/articles/getting-started">Getting started</a> section.</p>
      <!--p>For a more detailed overview of the architecture and implementation of <em>bacon</em> head over to the <a href="/documentation">Documentation</a>.</p-->
    </div>
  </div>

  <div class="row narrow blog">
    <h1>Bacon News</h1>

    {% for post in posts %}
    <article>
      <header>
        <h2>{{ post.title }}</h2>
        <p>by <span class="author">{{ post.author.name }}</span> on <time pubdate datetime="{{ post.published_at }}">{{ post.published_at }}</time></p>
      </header>

      {{ post.content | markdown }}
    
      <footer>
      </footer>
    </article>
    {% endfor %}
  </div>
{% endblock %}
