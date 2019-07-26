---
layout: default
---

<div id="main" role="main">			
	<div class="wrap">
		<div class="page-title">
			<h1>All</h1>
		</div>
    <!-- Tag buttons -->
    <a href="{{ site.url }}/katacodas" class="btn">All</a>
    <a href="{{ site.url }}/katacodas/tag/online-devops-dojo" class="btn">Online DevOps Dojo</a>
    <div class="tiles">
      <!-- User 'order' attribute to sort posts -->
      <!-- All posts with an order -->
      {% assign postArray = "" | split:"|"  %}
      {% for item in site.categories.katacoda %}
        {% if item.order %}
          {% if item.tags contains 'test' %}
          {% else %}
            {% assign postArray = postArray | push: item %}
          {% endif %}
        {% endif %}
      {% endfor %}

      {% assign postArray = postArray | sort: 'order'  %}
  
      <!-- Then all others -->
      {% assign postArrayNoOrder = "" | split:"|"  %}
      {% for item in site.categories.katacoda %}
        {% unless item.order %}
          {% assign postArrayNoOrder = postArrayNoOrder | push: item %}
        {% endunless %}
      {% endfor %}

      {% for post in postArray %}
        {% include post-grid.html %}
      {% endfor %}
      {% for post in postArrayNoOrder %}
        {% include post-grid.html %}
      {% endfor %}
    </div><!-- /.tiles -->
	</div><!-- /.wrap -->
</div><!-- /#main -->

