---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: default
---

<style>
.fun-facts {
	margin: 3em 0 0;
	font-size: 85%;
	color: #777;
}

.fun-facts h3 {
	color: #222;
	padding: 0;
	margin: .5em 0;
	font-size: 80%;
}

.fun-facts p {
	border-top: 1px solid #ccc;
	padding: .5em .5em;
	margin: 0;
}

.timer-font {
	display: inline;
	margin: 0;
	padding: 0;
}
</style>

<script>
function getNextDayOfWeek(date, dayOfWeek, hour) {
      var resultDate = new Date(date.getTime());
    resultDate.setDate(date.getDate() + (7 + dayOfWeek - date.getDay()) % 7);
   resultDate.setHours(hour,0,0,0);
    return resultDate;
}

var countDownDate = getNextDayOfWeek(new Date(),5,17);

// Update the count down every 1 second
  var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();

  // Find the distance between now an the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24)).toString();
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)).toString();
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60)).toString();
  var seconds = Math.floor((distance % (1000 * 60)) / 1000).toString();

  // Display the result in the element with id="timer"
  document.getElementById("circle-days").innerHTML = days + " <div class='timer-font'>days</div>";
  document.getElementById("circle-hours").innerHTML = hours + " <div class='timer-font'>hours</div>";
  document.getElementById("circle-minutes").innerHTML = minutes + " <div class='timer-font'>minutes</div>";
  document.getElementById("circle-seconds").innerHTML = seconds + " <div class='timer-font'>seconds</div>";

  // If the count down is finished, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("timer").innerHTML = "EXPIRED";
  }
}, 1000);
</script>

<div class="header">
	<div class="name-logo">
		<h1>
			<a href="/"><img alt="Folyo" src="./images/folyo-logo.png"></a>
		</h1>
	</div>
</div>

<div style="max-width: 550px; margin: -2em auto 5em; color: #444; line-height: 1.5; font-size: 110%;">
	<p>Folyo connects startups with trustworthy design and development firms over email. Here's how it works:</p>

	<ol>
		<li>Email us your project (include timeline and budget).</li>
		<li>We review it to see if we can help.</li>
		<li>If so, we send it to 2,500+ freelancers in the next newsletter.</li>
		<li>You get proposals to your email.</li>
	</ol>

	<p>It's easy. It's fast. And it's free.</p>

	<p><a href="MAILTO:robert@letsworkshop.com" class="button" style="background-color: #6d82ff; color: #FFF; border:0; padding: .45em 1em .5em; font-size: 120%; margin: 2em 0;">Start the process - email us</a></p>
	
	<p class="workshop-upsell" style="color: #999;font-size: 80%; margin: 0 0 1em">Freelancers: Want to get the weekly newsletter? <a href="http://letsworkshop.com" style="color: #777;">Apply by signing up on Workshop</a></p>
	
	<div class="fun-facts">
		
	<h3>Some fun facts about Folyo...</h3>
	
	<p>We've helped Dropbox, Airbnb, Square, Intercom and more...</p>
	
	<p>The next newsletter goes out in <span id="circle-days" class="circle-time"></span>, <span id="circle-hours" class="circle-time"></span>, <span id="circle-minutes" class="circle-time"></span>, and <span id="circle-seconds" class="circle-time"></span><span id="timer"></span>.</p>
	
	<p>We check every freelancer's portfolio by hand</p>
	
	<p>Before building a custom app, we ran on Wufoo and Mailchimp</p>

	<p>We were originally founded by designer <a href="http://sachagreif.com">Sacha Greif</a></p>

	</div>
</div>

	
<!--
{% include header.html %}

<p style="margin: 0 auto 0; max-width: 800px; color: #717171;">:raising_hand: Now hiring!</p>
<div class="homepage-project-list">
	{% for project in site.data.projects limit:10 %}
    <a href="{{ project.url }}">
			<div class="project-info">
				<div><img src="{{ project.picture }}"></div>
				
				<div><span class="date">{{ project.date | date: '%B %d, %Y' }}</span><br>
					{{ project.title }}</div>
			</div>
    </a>
	{% endfor %}
	
	<div class="free-download-offer">
		<script src="https://gumroad.com/js/gumroad-embed.js"></script>
		<div class="gumroad-product-embed" data-gumroad-product-id="PgSbF"><a href="https://gumroad.com/l/PgSbF">Loading...</a></div>
	</div>
</div>

{% include footer.html %}
-->