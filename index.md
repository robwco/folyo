---
layout: home
title: Workshop by Robert Williams
---

<div class="page" markdown="1">
{% include top-nav.html %}

<div class="optin-box" markdown="1" style="box-shadow: 0 0 25px rgba(0,0,0,.09); padding: .0125em 1em; margin: .5em 0; border-radius: 15px;">
		
# Do you know where to find high-paying clients?

A steady pipeline is the lifeblood of consulting. A steady flow of new clients keeps you *in business.* I help consultancies like yours find thousands of dollars in consulting work every week.

Download my top 5 favorite places to find high-paying clients now:

{% include course-form.html %}

<p style="margin-top: 1em; color: #666; font-size: 80%;">(It's worked for hundreds of people. It will work for you too.)</p>

</div>

### Or check out my products:

<div class="product-list">
	{% for product in site.data.products %}
	
		{% if product.coming_soon == false %}
			<div class="product-item">
				<div class="product-grid" style="display: grid; grid-template-columns: 175px 1fr; grid-gap: 2rem; align-items: center;justify-items: center;">
					<div>
						<img src="{{ product.pic }}" style="max-height:100px;">
					</div>
				
					<div>
						<h3><a href="{{ product.permalink }}">{{ product.offer }}</a></h3>
						<p>{{ product.summary }}</p>
					</div>
				</div>
			</div>
		{% else %}
			<div class="product-item">
				<h3>{{ product.offer }}</h3>
				<p>{{ product.summary }}</p>
			</div>
		{% endif %}
	{% endfor %}
</div>

<div class="bio" style="display: grid; grid-template-columns: 60px 1fr; padding: 2em 0; 
grid-column-gap: 2rem;">
	<div>
		<img src="/images/yay.png" style="max-width:60px; border-radius: 60px;">
	</div>
	<div>
Workshop is a project by <a href="http://twitter.com/clientgiantrob">Robert Williams</a>. I make money selling simple products  to small consulting shops. They've now made over a million dollars in revenue. It works. I wouldn't be in business if it didn't.
	</div>
</div>

{% include footer.html %}
</div>
