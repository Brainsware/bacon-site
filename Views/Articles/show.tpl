{% block content %}
	<div id="toc" class="threecol">
	    <div class="content">
        <a href="/articles">&larr; Back to Articles</a>
		    <h2>Contents</h2>
		    {{ content | markdown | dotoc }}
	    </div>
	</div>

  <div id="toc-spacer" class="threecol"><!-- --></div>

	<div id="article-content" class="ninecol last article">
		{{ content | markdown }}

    <div class="fork-us">
      {{ fork_us | markdown }}
    </div>
	</div>


  <script type="text/javascript">
    $(document).ready(function () {
        $('#toc').affix({ offset: 160 });

        $('#toc-spacer').affix(); // Keeps the content at the same position
    });
  </script>
{% endblock %}
