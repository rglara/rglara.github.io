When developing software, we engineers have to use a variety of tools to deliver the right product to our clients. As Batman has practically everything in his utility belt, let's see what I keep up my sleeve as staples of software engineering.
<h3>The Soft Skills</h3>
These are the skills I use for software engineering and product ownership. There are a few technologies, but these are mostly techniques that help define the right product to develop and the environment in which software will be used. These are heavily influenced by training sessions with <a title="Jeff Patton on Twitter" href="https://twitter.com/jeffpatton">Jeff Patton</a>, <a title="The Dude on Twitter" href="https://twitter.com/davidhussman">David Hussman</a>, and SEP's own <a title="Chris Shinkle on Twitter" href="https://twitter.com/chrisshinkle">Chris Shinkle</a>.

<strong>Affinity Diagrams</strong>
<p style="padding-left: 30px">I've used <a title="Affinity Diagram on Wikipedia" href="http://en.wikipedia.org/wiki/Affinity_diagram">affinity diagrams</a> to map out areas of a website, risks of a proposal, goals of an organization, and many others. Throwing key ideas on sticky notes whenever you happen upon them, or through an organized discovery session, and then making sense of the chaos really helps solidify ideas and themes.</p>
<strong>Personas</strong>
<p style="padding-left: 30px">When you are writing software, find out who is going to use it. Distill the users into distinct representative <a title="User Modeling w/Jeff Patton" href="http://agileproductdesign.com/presentations/user_modeling/index.html">personas</a>. You, as a software developer, are not usually the end user. So, what you think the user will do will be wrong. Have the defined persona profile tell you. Give the persona a name, so you can refer to them ("will that help Mary do her job?" or "will that feature just annoy Pete instead of help?"). But remember, you can have plenty of personas, but only target one or two at a time. Otherwise, your user experience will be spread too thin and not be effective to anyone.</p>
<strong>Story Maps</strong>
<p style="padding-left: 30px"><a title="Story Maps w/Jeff Patton" href="http://www.agileproductdesign.com/blog/the_new_backlog.html">Story maps</a> are a visualization of what the software should be able to do. This isn't the backlog, but it's a great way to generate a backlog. Adding swim lanes to break down releases has helped our clients see what they are getting and when. Additionally, the visual aspect draws the client in and gets them excited and participating.</p>
<p style="padding-left: 30px">There is an online tool called <a title="Card Board It" href="https://www.cardboardit.com/">CardBoard</a> available. It still seems in its infancy, but it could go places. I'm still partial to my sticky notes on the wall.</p>
<strong>Paper/Whiteboard Prototyping</strong>
<p style="padding-left: 30px">If I ever need to get a user interface laid out, there are usually a few stages I go through. First, I sit in front of a whiteboard with markers and an eraser. It's hard for me to go through a meeting that has a whiteboard in the room to not use it for visualizations (flow charts, UI, etc.). When an end user or stakeholder needs to see the results, especially early on in discovery or design, paper prototyping really helps. The artifacts are tangible and can be used for <a title="User Testing of Paper Prototypes" href="http://www.questionablemethods.com/2011/11/paper-prototype-user-testing.html">user feedback studies</a>.</p>
<p style="padding-left: 30px">I've used a tool called <a title="Balsamiq Mockups" href="http://balsamiq.com/">Balsamiq Mockups</a> to create higher fidelity mockups. The "pro" of Balsamiq is that it is higher fidelity and the files are just XML, so putting them in source control and tracking them makes for reverting and merges ideas easier than other files. The "con" I've found of Balsamiq, at least for me, is that I try to polish things a little more than necessary for a "paper" prototype. However, that could be because I hadn't used the tool a lot yet and had not generated the correct discipline.</p>
<strong>User Stories &amp; Acceptance Criteria</strong>
<p style="padding-left: 30px">For the day-to-day project/product management, I'm dealing with <a title="Behavior Driven Development" href="http://en.wikipedia.org/wiki/Behavior-driven_development">BDD</a> user stories. I break down my stories into three areas: the value statement, design considerations, and acceptance criteria.  The value statement is generally stated as "As a [persona], I want to [perform action] so that [value generated]." but there are <a title="Value Statement Templates" href="http://en.wikipedia.org/wiki/User_story#Creating_user_stories">different formats</a> that you can choose from. Since I'm a little more technically-inclined, I sometimes add design considerations to the story where I can discern them. Examples could be "This will impact the Installer by..." or "Speaking with the SME, the [ComponentLibrary] should be utilized by...". Finally, I include the acceptance criteria (written in the classic Given/When/Then format), which defines when the story is actually "done". If all the acceptance criteria is met, I can sign off on the feature.</p>
<p style="padding-left: 30px">User stories are meant to tell a story (thus, the name). The value statement conveys the client's desire in functionality. The acceptance criteria can also do that, but I've also had acceptance criteria that I have written be used to convey understanding and context back to the client. In turn, the client will be more engaged and communication is generally of high quality; a win/win situation.</p>
<p style="padding-left: 30px">User stories can be run through a <a title="Kanban Board" href="http://en.wikipedia.org/wiki/Kanban_board">Kanban</a> system using physical sticky notes or tracked electronically. I've used <a title="Atlassian JIRA" href="https://www.atlassian.com/software/jira">JIRA</a> and TFS w/<a title="SEP TeamWorks" href="labs/teamworks/">TeamWorks</a> for tracking stories. It isn't uncommon to see some of the electronic boards displayed on extra TVs or monitors around the office.</p>

<h3>Technologies FTW</h3>
Besides being a product owner, I try to develop code** every now and then to keep that blade sharpened and not rusted out. The following tools are things I use day-to-day. It isn't an exhaustive list like <a title="Ultimate Developer &amp; Power Tools by Scott Hanselman" href="http://www.hanselman.com/tools">Scott Hanselman's Ultimate Developer</a>, but most or all of these are on his list.  These are the things I install almost immediately on a new machine or carry on my <a title="PortableApps.com" href="http://portableapps.com/">PortableApps</a> folder.

<strong>Visual Studio</strong> (for applications &amp; web sites)
<p style="padding-left: 30px">I'm usually writing code in C# for the .NET framework. Visual Studio is still a great IDE for that development. The NuGet package manager has really helped to standardize getting and managing third-party libraries, which used to be a big pain point in the past. For front-end development, WPF for desktop and ASP.NET MVC w/Razor for web.</p>
<strong>Notepad++</strong> (for scripting)
<p style="padding-left: 30px">For simpler scripting in Python or just viewing text files, Notepad++ is my Notepad replacement. The color coding by language plus some macros make it a good quick editor when I don't want the bulkiness of Visual Studio.</p>
<strong>Google Chrome</strong> (w/F12 Developer Tools)
<p style="padding-left: 30px">Everyone needs a web browser, and this is mine. For web development, I use the F12 developer tools a lot to make sure my markup is being generated correctly and to tweak styles. After using it so much, I can't help but peek on other websites I use and tweak things just to see what would happen.</p>
<strong>Paint.NET</strong> (for image manipulation)
<p style="padding-left: 30px">I'm no graphic artist, but I can get some screenshots and manipulate them just enough to show a client a mockup with a little more fidelity than a Balsamiq mockup. Sometimes, image annotations are enough to provide good follow-up to acceptance criteria.</p>
<strong>git</strong> (for source control)
<p style="padding-left: 30px">I wasn't on-board with git when I first tried it. The learning curve was steep. But now that I’m fluent in using it, I'm all in. The workflow is awesome, and the fact that I can use it for any folder on my machine and maintain history is invaluable. Even if I'm prototyping in Balsamiq or writing a proposal, I can keep my file history and revert if I have to go back to older ideas. If you aren't using git, go learn. You won’t regret it.</p>
Some of these were high level overviews.  Is there a topic you'd like to see in more detail? Did I miss one of your favorites? Or perhaps there is a new hotness to replace my old 'n busted? Maybe you haven't heard of one of these and now it's your favorite. Let me know in the comments.

<hr />

** Some friends on my teams usually inject the dig of “you can write code?”. For them, I give them a playful <a title="Gibbs from NCIS" href="http://www.youtube.com/watch?v=NRM2OENl2jk">Gibbs head slap</a>.