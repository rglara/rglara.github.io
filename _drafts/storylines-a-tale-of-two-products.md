---
layout: post
title: "Storylines: A Tale of Two Products"
tags: [sep, acceptance criteria, persona, product development, story map, requirements]
---
So, you say you want to build a product? Awesome. How do you get started?

<img src="/images/ideaman.png" width="100" height="200" style="float:right; margin-left: 20px;" />

<h2>In the Days of Yore</h2>

<h3>Day 1</h3>

Some people used to (and sometimes, still do) get dozens of people in a room and author this 200 page document that has a bulleted list of statements of what the software should do, usually with some unique numbering scheme next to each item. Those statements might even have diagrams with them and/or references to some industry standard saying why it's important. And this Author would feel good, since they poured much energy into this Document.

Then a Developer would take this tome, try to read it, and then implement what they think they read. They might ask a Designer to help make pretty graphics. They would do this for months and then one day generate an actual Thing.

Someone, hopefully the Author of the Document or someone that halfway understands the 200 page document, would then try to use the Thing to see if it actually did what they wrote. Some parts would work; other wouldn't.

When the Author would ask the Developer why it didn't work, the Developer would say that it does work... for their interpretation of the document. Then the Author would explain, and the Developer would change the Thing. Hopefully, the Author would update the Document for the change. But sometimes they forgot.

The Stakeholders were nervous. The Author assured them the Thing would be an awesome Product one day. The Developer just had to get through the Document.

<h3>Epilogue</h3>

<img src="/images/oldbook.jpg" width="200" height="134" style="float:right; margin-left: 20px;" />

Four months into the effort, the market for the Thing changed. The Developer was one third of the way through the Document. But the Author saw that the Thing wasn't functional and had to change. So, the Author told the Developer to stop. The Document was put on the shelf. The Author gathered a new group to write a new Document...

And there was no happily ever after.

<img src="/images/ideaman.png" width="100" height="200" style="float:right; margin-left: 20px; transform: scale(-1,1);" />

<h2>In a Parallel Universe</h2>

<h3>Alternate Day 1</h3>

The Author had a lot of ideas. She had some ideas from customer feedback and others from napkins over lunch conversations. Eventually, she got enough that a narrative started to present itself; a set of Stories, if you will. As she kept telling the Story, she broke it down and arranged it into a <a href="https://www.cardboardit.com/">Story</a> <a href="http://jpattonassociates.com/user-story-mapping/">Map</a>.  A few stories exploded into many smaller stories.

These Stories didn't have a lot of detail. The Author had a Developer ready to go but not enough detail to really know what to build. The Author had them all in an <a href="https://www.atlassian.com/software/jira">Electronic</a> <a href="https://www.ca.com/us/products/agile-solutions.html">Issue</a> <a href="https://www.visualstudio.com/team-services/agile-tools/">Tracking</a> System (EITS), but she only had 1 or 2 sentences for each one. And they were really rough.

So the Author took the list to her business Stakeholders to ensure the business case was there and the value proposition for the effort made sense. She then brainstormed on what kinds of users would use the system and grouped them into a set of Personas. She and the Stakeholders knew the market was ripe to reach a certain persona, so they targeted that one first. The Stakeholders decided she should Own the Product, to see it through and be able to give them updates, as the process chugged along.

With the Persona in mind, the Author, now Product Owner (PO), talked with the Developer and Designer about the Story Map. The Developer asked some architectural questions that the Author hadn't thought of. The Designer asked questions regarding the user experience and application workflow, so the Product would feel natural to the Persona. Together, the three sketched some wireframes and adjusted the Story Map. Their decisions and pictures were uploaded to the EITS, so they could reference them later.

<h3>Learn, Build, Measure, Repeat</h3>

<img src="/images/roundabout.png" width="200" height="200" style="float:left; margin-right: 20px;" />

The Story Map was too big to do all at once, so the Product Owner found the most appropriate stories in the Story Map to do first and started fleshing them out. The PO took the stories with their notes and wrote Acceptance Criteria to define when each story would be done.

As the Developer began on a Story, they would walk through the details to ensure there were no issues or gaps. Throughout development, the Developer would pair up with the PO and Designer on minor details. Automated tests are written to make sure future work doesn't break established work. If low impact workflow or design issues arise, they can be fixed within the Story.

Once the Developer believes a Story is done, the PO and Tester check to make sure the Acceptance Criteria is met. They try a few things to check edge cases, just in case new information was injected at the last minute. If problems are found with the Story, it is blocked until the Developer can resolve them.

After the Story is accepted by the PO, she adds information to the release notes and the Story is integrated into the next build of the Product. Since each Story does not leave the Product unstable or incomplete, the Product can be deployed and/or tested internally with real users (preferably ones like the Persona).

If problems arise that aren't pertinent to the Story, the PO files a Defect. The Developer should try to investigate his Defects earlier than later because they should be easier to fix when his memory of the code is fresh. If the PO finds new ideas or improvements, she can update the Story Map and EITS so it can be included when deciding the next round of stories to develop.

Stories were pulled off the Story Map just enough to keep the backlog of work filled. Design and details would be gathered as late as possible. The PO could then leverage the knowledge gained by her triad: herself, the Developer, and the Designer. Even though the Product was rough in the beginning, the Stakeholders were happy they could see it functioning at any point along the way.

<h3>Alternate Epilogue</h3>

<img src="/images/holiday.jpg" width="200" height="133" style="float:right; margin-left: 20px;" />

Things continued like this week after week. Four months into the effort, the market for the Product changed. The PO noticed that her Story Map had some of those ideas, but the market research filled in the gaps for her. She changed the prioritization of her stories and started working on them as soon as the Developer was ready. The cadence of delivery didn't skip a beat.

<h2>Thought Exercise</h2>

Which story best fits your situation? Which story <em>should</em>?
