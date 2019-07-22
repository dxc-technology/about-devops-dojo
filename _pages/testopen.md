---
layout: default
permalink: /testopen
---

<div id="main" role="main">			
	<div class="wrap">
		<div class="page-title">
			<h1><i class="fas fa-grin-tears fa-spin fa-2x" aria-hidden="true"></i> You found the hidden Public Yellow Belt Test Page! </h1>
			{% if page.excerpt %}<h2>{{ page.excerpt }}</h2>{% endif %}
		</div>

		<div class="tiles">
			<!-- User 'order' attribute to sort posts -->
			<!-- All posts with an order -->
			{% assign postArray = "" | split:"|"  %}
			{% for item in site.categories.katacoda %}
				{% if item.order %}
					{% if item.tags contains 'testopen' %}
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

