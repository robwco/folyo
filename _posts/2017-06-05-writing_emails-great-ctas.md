---
layout: post
title:  "Great CTAs"
categories: writing_emails
---

I collect great cold email calls to actions here when I come across them. 

Here's some of the best call to actions I've ever read. They all made me reply when I read them:

<blockquote class="cta-swipe">
Robert<br>

{ Insert crisp body email here that sets me up for the ask. } <br>

{% for cold_email_cta in site.data.cold_email_ctas %}
	
	{{ cold_email_cta.ask }}
	<hr>

{% endfor %}

</blockquote>

Last updated: June 5th, 2017.