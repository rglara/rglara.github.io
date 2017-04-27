---
layout: post
title: "Course Correction: Beware of Icebergs"
date: 2013-08-19 20:19:54 +0000
tags: [sep, blog battle, continuous delivery, discovery]
---
A coworker and I were discussing issues that impact a project's delivery or feature set. While throwing ideas around, I mentioned that we get hit by icebergs that disrupt our flow. He said, "what's an iceberg?"
<a href="wp-content/uploads/2013/08/iceberg.jpg"><img class="wp-image-3221 alignright" alt="iceberg" src="wp-content/uploads/2013/08/iceberg-150x150.jpg" width="150" height="150" /></a>
<h2>Knowledge Iceberg</h2>
When I typically think of an iceberg on a project, I think of a feature or epic that we originally spec out with confidence. (Imagine looking at the top of an iceberg.) Later, we find a key misunderstanding or missing piece of information. (Imagine the portion of the iceberg under the water.) Then the scope or complexity of the feature/epic gets blown out of proportion. Icebergs obviously aren't planned, so project deliveries get impacted.

You can also think of icebergs in a larger scope when feature creep starts to occur. Something happened to cause an entire feature or epic to be missed. We have to step back to analyze how we got here.
<h2>On the Lookout</h2>
How can we avoid icebergs? The simple answer is get more information. Others that have investigated icebergs in their own fields (they aren't just in software) have made the analogy to make the icebergs float higher. We need to uncover more of the iceberg so we know exactly how to attack the problem.

[caption id="" align="alignright" width="300"]<a href="wp-content/uploads/2013/08/ConeOfUncertainty.png"><img class=" " alt="Cone oUncertainty" src="wp-content/uploads/2013/08/ConeOfUncertainty-300x189.png" width="300" height="189" /></a> Cone of Uncertainty using Continuous Delivery validation to mitigate risk[/caption]To that end, I've been a major proponent of our Envision practices at SEP. We're doing a better job engaging our clients before the project begins to discover what their needs and wants are and setting up expectations. Techniques like User Personas, Story Mapping, and Paper Prototyping set a framework for discussing scope and ideas using a shared terminology. (We have <a title="Story Mapping – Getting Started" href="2010/04/07/story-mapping-getting-started/">other</a> <a title="Why Perform Discovery (Envision) On the Front End of a Development Process?" href="2012/06/19/why-perform-discovery-envision-on-the-front-end-of-a-development-process/">posts</a> to discuss that realm, and you can also check out <a title="Jeff Patton on Twitter" href="https://twitter.com/jeffpatton">Jeff Patton</a>'s going-ons for more details.) By having that shared understanding, our clients a) begin seeing our investment into the project, and then as a result, b) information starts to flow quicker and easier.

On the development side, we've embraced a lean and agile (read: "little-a agile") mentality and implementation paradigm. In contrast to waterfall or overly heavy processes, we can iterate quickly and get the feedback we need to course correct a project or get validation on ideas that are still in their infancy. When we can get the development process combined with a bit of product ownership, <a href="http://en.wikipedia.org/wiki/Emergent_Design">emergent design</a> and <a href="http://en.wikipedia.org/wiki/Continuous_delivery">continuous delivery</a> can help us overcome the <a href="http://en.wikipedia.org/wiki/Cone_of_Uncertainty">cone of uncertainty</a> that can plague a project.
<h2>Avoiding a Titanic Failure</h2>
[caption id="attachment_3251" align="alignright" width="300"]<a href="wp-content/uploads/2013/08/CourseCorrection.png"><img class="size-medium wp-image-3251 " alt="Course Correction" src="wp-content/uploads/2013/08/CourseCorrection-300x189.png" width="300" height="189" /></a> Course Correction and the Cost of Change[/caption]

Let's say that we're at point A in the project's lifecycle. Our goal as we have defined it is sitting at point B. Using our crystal ball to see the future, we know that we really want to land at point C when it's all said and done. <em>How do we get to our goal?</em>

Course #1 would be to go straight to what we think is "right" today (point B) and then validate it. What happens between A and B? Are we talking to users or clients? Are our competitors doing something new and innovative? By going to point B, we have the additional cost of getting to where we really need to be (point C).

Course #2 would be to go a little toward point B (like we currently think is "right") and stop to validate. Like a ship on the sea, we can use our compass (aka validation) to see if we're going in the right direction. If not, we can adjust our course.

In both cases, the overall cost is higher than we originally thought. To improve upon that, we run through the Envision practices and learn about the users and the root of their problems in-depth earlier. This would result in making the distance between points B and C closer. The big gain here is that shrinking that gap is a lot cheaper in discovery sessions than in full development and validation.

Let's go a step further: <em>when do your users actually start using your product in each of these scenarios?</em>

Course #1 isn't validated until point B, so you have a one major delivery. According to our crystal ball, that delivery is going to flop, since you need to be at point C. Now you have to spend more resources (and somehow justify it to the appropriate management) to get to where you need to go.

Course #2 has many more options. What if we weren't just validating at each step, but we were actually delivering to the users (continuous delivery)? Competitors can be kept at bay and the users can provide more and more feedback. It still may cost more, but the incremental nature will provide results to that management layer (the one asking hard questions).
<h2>Plot Your Course</h2>
Find the path that best meets your needs to blaze a trail. Use the tools available to identify the potential icebergs. Once you've spotted the icebergs, act to go around them or deal with them in the appropriate manner. If you have to fail, fail quickly so you can recover quickly and get back on track.

A real example occurred during a discovery session we had with a newer client. They had a goal set and had us ready to implement it (point B). We did a discovery session to ask questions and get a firmer grasp of the domain. In that process, the questions we asked uncovered that they needed to go in a different direction (point C). The differences between point B and C were so drastic, the client had to re-think the validity of the project. We had worked ourselves out of a project, but avoiding that iceberg (by failing early) and averting its cost were critical to our client.

I can't think of a better way to be remembered.
