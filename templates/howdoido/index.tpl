{% block content %}
	<div id="toc" class="threecol">
	    <div class="content">
		    <h2>Contents</h2>
		    <ol>
		        <li><a href="#installation">the installation</a></li>
		        <li><a href="#blog">the blog module</a>
		            <ul>
						<li><a href="#blog-model">the model</a></li>
						<li><a href="#blog-controller">the controller</a></li>
						<li><a href="#blog-templates">the templates</a></li>
		            </ul>
				</li>
	            <li><a href="">More advanced shit</a></li>
	            <li><a href=""></a></li>
	            <li><a href=""></a></li>
	            <li><a href=""></a></li>
		    </ol>
	    </div>
	</div>
	<div id="howdoido" class="ninecol last">
	    <h1>How do I do ..?</h1>
	    <p>Most open source frameworks just offer an API documentation to sift through, which is useful if you know how to work with it already.</p>
	    <p>If you're just getting to know the framework though, you most probably want to know how we do things.</p>
	    <p>So here's our collection of introductory examples:</p>
	    <div id="installation">
		    <h2>.. the installation</h2>
		    <p>Before getting all up in that bacon, here are the server requirements:</p>
		    <ul>
		        <li>A webserver</li>
		        <li>PHP 5.3.0 or greater</li>
		        <li>A database (optional)</li>
		    </ul>
        <p>Here's the general directory layout:</p>
        <div class="code">/base
/config
/controllers
/htdocs
/lib
/logs
/models
/templates</div>
	    </div>
      <div id="blog">
        <h2>.. the blog module</h2>
        <p></p>
        <div id="blog-model">
          <h3>.. the model</h3>
          <p></p>
        </div>
        <div id="blog-controller">
          <h3>.. the controller</h3>
          <p></p>
        </div>
        <div id="blog-templates">
          <h3>.. the templates</h3>
          <p></p>
        </div>
      </div>
	</div>
{% endblock %}
