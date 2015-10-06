#Below should be the image file of my site map.
![site map image](/week-2/imgs/site-map.png "Brians sitemap")
Notes to self:
 - MUST include current directory folder name in the relative path
 i.e. /week-2/imgs/site-map.png
 - unless the image file is in the same folder as the .md file. if that's the case, then just use filename.
 - Note:
 /imgs/site-map.png DOESN"T WORK
 - Also note: Absolute references will never work.

#What are the 6 Phases of Web Design?
1. Information gathering
2. Planning
3. Design (jpeg’s or wireframe software)
4. Development
5. Testing & Delivery
6. Maintenance (and SEO!)

#What is your site's primary goal or purpose? What kind of content will your site feature?
My site's primary goal is going to be to inform prospective employers, colleagues, and business partners about my background and experiences, and to provide them with a way to both contact me and stay up to date with my future projects.
#What is your target audience's interests and how do you see your site addressing them?
I anticipate that my target audience will have similar interest to my own, and so by highlighting my passions for entrepreneurship and technology, I will be able to address their interests and leave them with a positive impression about me.
#What is the primary "action" the user should take when coming to your site? Do you want them to search for information, contact you, or see your portfolio? It's ok to have several actions at once, or different actions for different kinds of visitors.
Subject to change, but I think the action I'd like users to take would be to click-through on the links to either my LinkedIn and/or my GitHub profiles and to begin following me.
#What are the main things someone should know about design and user experience?
It is crucial to recogize that the design process starts at the beginning of any project, but does not end there, and should be continual process of iteration through each phase from initial planning and information gathering all the way through to testing & maintenance. When the web designer is distinct from the developer or product manager, it is crucial that the designer ask core questions about what is the purpose of a site, what actions or value does a user expect to take or receive from the site, and so forth, prior to doing any intial layout planning. Sitemaps and wireframes are likewise important ways to visualize and get feedback on the design prior to development. Lastly, while it's difficult to remain fully objective with an otherwise subjective topic such as design, but structured usability testing with live users, especially with tools like Optimizely or Google Analytics' wesbite optimizer, are great for making informed decisions about design.
#What is user experience design and why is it valuable?
User experience design is the practice of designing websites with the primary objective of maximizing a user's positive feelings and experiences while interacting with your website. As Larry Page would put it, it's about focusing on the user first.
#Which parts of the challenge did you find tedious
Determining the appropriate syntax for the relative path was the hardest part, and in hindsight, I spent too much time googling for the correct answer and a better explanation, instead of simply playing with different variations, since really there were only 3-4 ways you could conceivably construct the path. I also tried an absolute path thinking that would at least confirm my image wasn't corrupted, and that also didn't work because GitHub doesn't know anything about my local parent directories.
 Ultimately, what I didn't realize was that the current directory needed to be included in the relative path. I would have assumed that would not have been the case, since you don't need the current directory when you are referencing just the filename when a file is in the same directory.