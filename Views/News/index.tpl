{% block content %}
  <div class="row narrow">
    <div id="about">
      <p class="hero">
      <em>Bacon</em> is a clean, minimalistic and fast MVC framework. Our goal is to ease web development and provide a solid foundation for common use cases.
      </p>

      <div class="teaser fourcol left-aligned">
        <h3><a href="/articles/getting-started">Getting started</a></h3>
        Head over here to dive into Bacon
      </div>

      <div class="teaser fourcol left-aligned">
        <h3><a href="/articles/download">Download</a></h3>
        Get your own copy
      </div>

      <div class="teaser fourcol last left-aligned">
        <h3><a href="/articles/contribute-support">Contribute &amp; Support</a></h3>
        Find us on Github, get support and help us improve Bacon
      </div>

      <!--p>For a more detailed overview of the architecture and implementation of <em>bacon</em> head over to the <a href="/documentation">Documentation</a>.</p-->
    </div>
  </div>

  <div class="row narrow blog">
    {% for post in posts %}
    <article>
      <header>
        <small><time pubdate datetime="{{ post.published_at }}">{{ post.published_at | date('dS \\of F Y') }}</time></small>
        <h2>{{ post.title }}</h2>
      </header>

      {{ post.content | markdown }}
    
      <footer>
      </footer>
    </article>
    {% endfor %}
  </div>
{% endblock %}
