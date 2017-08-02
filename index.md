---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: default
---

{% include header.html %}

<p style="margin: 0 auto 0; max-width: 800px; color: #717171;">Now hiring!</p>
<div class="homepage-project-list">
	{% for project in site.data.projects %}
    <a href="{{ project.url }}">
			<div class="project-info">
				<div><img src="{{ project.picture }}"></div>
				
				<div><span class="date">{{ project.date | date: '%B %d, %Y' }}</span><br>
					{{ project.title }}</div>
			</div>
    </a>
	{% endfor %}
</div>

{% include footer.html %}
