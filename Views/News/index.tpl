{% block content %}
  <div class="row">
    <div class="onecol"></div>
    <div id="about" class="tencol">
      <p class="hero">
      <em>bacon</em> is a clean, minimalistic and fast MVC framework. Our goal is to ease web development and provide a solid foundation for common use cases.
      </p>

      <p>To get started as quickly as possible head over to our <a href="/howdoido/">How do I ..?</a> section.</p>
      <p>For a more detailed overview of the architecture and implementation of <em>bacon</em> head over to the <a href="/documentation">Documentation</a>.</p>
    </div>
    <div class="onecol last"></div>
  </div>

  <div class="row">
    <h1>Bacon News</h1>

    {% for post in posts %}
    <article>
      <header>
        <h2><a href="/blog/{{ post.slug }}">{{ post.title }}</a></h2>
        <p>by <a href="/authors">Igor Galic</a> on <time pubdate datetime="2009-10-09">9th October, 2009</time></p>
      </header>

     {{ post.content | markdown }}
    
      <footer>
      </footer>
    </article>
    {% endfor %}
  </div>
{% endblock %}
