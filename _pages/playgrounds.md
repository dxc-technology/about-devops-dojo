---
layout: default
permalink: /playgrounds
---

<div id="main" role="main">			
	<div class="wrap">
		<div class="page-title">
			<h1><span class="fa-stack fa-lg icon-terminal">
          <i class="fas fa-square fa-stack-2x"></i>
          <i class="fas fa-terminal fa-stack-1x" style="color:white"></i>
        </span>Katacoda playgrounds</h1>

			{% if page.excerpt %}<h2>{{ page.excerpt }}</h2>{% endif %}
		</div>

		<div class="tiles">
			<!-- User 'order' attribute to sort posts -->
			<!-- All posts with an order -->
			{% assign postArray = "" | split:"|"  %}
			{% for item in site.categories.katacoda %}
				{% if item.order %}
					{% if item.tags contains 'playground' %}
							{% assign postArray = postArray | push: item %}
					{% endif %}
				{% endif %}
			{% endfor %}
			{% assign postArray = postArray | sort: 'order'  %}

			{% for post in postArray %}
				{% include post-grid.html %}
			{% endfor %}
		</div><!-- /.tiles -->
	</div><!-- /.wrap -->
</div><!-- /#main -->

