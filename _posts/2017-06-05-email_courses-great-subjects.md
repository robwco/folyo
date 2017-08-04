---
layout: post
title:  "Great subject lines"
categories: email_courses
---

I collect great email subject lines when I come across them. 

Here's some of the best subject lines I've ever read. They all made me immediately stop what I was doing and open them:

{% for swipe_subject_line in site.data.swipe_subject_lines %}
<blockquote class="subject-line-swipe">
	{% if swipe_subject_line.writer != null %}
		<cite><a href="{{ swipe_subject_line.website }}">{{ swipe_subject_line.writer }}</a></cite> <br>
	{% endif %}
	
	{{ swipe_subject_line.subject }}
</blockquote>
{% endfor %}

Last updated: June 5th, 2017.