---
layout: default
permalink: /new/
---

{% include header.html %}

<div class="this_week-grid">
	<h1 class="featured-header">This weeks portfolios</h1>	
  {% for post in site.posts limit:5 %}
    <a href="{{ post.url }}">
			<div class="portfolio">				
				<div class="portfolio-info">
					<div class="photo">
						<img class="photo" src="{{ post.photo }}">
					</div>
					
					<div class="bio">
			    	<h3>{{ post.title }}</h3>
						<h4>{{ post.tags | sort | join: ", " }}</h4>
					</div>				
				</div>					
    	</div>
		</a>
  {% endfor %}
	
	<div class="opt-in">
		<p>Get the five featured Folyo portfolios in your inbox every week! <a href="#" class="button">Subscribe</a></p>
	</div>
	
	<div>
		<h3>More portfolios coming soon</h3>
		<p>Get featured. Submit your portfolio here.</p>
	</div>
</div>

{% include footer.html %}