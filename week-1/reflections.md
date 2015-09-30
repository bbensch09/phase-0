## 1.1 Think About Time Reflection
I opened all of the links above and skimmed over most of them, diving deep into Joel Gascoigne's post on starting small. This quote of his really struck me, since I've very much been thinking with the opposite mentality for the last few weeks, and struggling to come up with a big startup idea that I can commit to building during/after DBC. "Don’t even try to build startups. That’s premature optimization. Just build things that seem interesting." I also watched most of BJ Fogg's TedX talk about "Tiny Habits", and really like the idea of giving small congratulatory self-praise for the behaviors you want to change, and defining concrete triggers for when you plan to do those behaviors.  Time-boxing is when you basically define a box of time (generally using a timer, 25min in the Pomodoro method example) to be set aside for each task you want to accomplish, and track & reflect whether or not you're able to achieve that task/objective within the box of time.

Personally, I've previously never really had issues/concerns with time-management in the workplace, while only really using my google calendar a google doc titled "To-Do List" to manage my priorities. However, in the last two weeks since leaving my old job, I've very much discovered how easy it is to get distracted and veer from my to-do list, especially when there are no hard consequences for doing so, nor incentives for accomplishing tasks. I do also have a standing weekly call with my Dad where we compare & discuss our previous week's to-do lists, and that has been helpful, so I plan to keep that up. Additionally, however, I'm going to implement BJ Fogg's method to remind me to do my daily physical therapy exercises (for lower back injury). My trigger will be taking a shower, which I do every morning. Before I shower, I will do my 20min of PT exercises, and then do a double-fist pump and say "I'm awesome". Overall, my time management plan of action for Phase 0 is going to be to keep my short google-doc to-do list, and dedicate 9am-1pm M-F for DBC challenges, and to use the SF public library as my dedicated work space during these hours. I know that I will have plenty of time to finish challenges & do GPS outside those hours, but I think sticking with this schedule will ideally keep me more focused, and also preserve more time for learning iOS/Swift2 during Phase 0. Lastly, I also re-downloaded the "Headspace" app, which I'd used briefly while at google, and am going to try meditating for 10min every night before bed.

## 1.2 The Command Line Reflection
Shell refers to any command-line interface that allows you to run commands directly through the operating system. Bash is the specific type of shell program we use in Mac OS or Linux, which you can customize via your Bash profile.

I felt most challenged by the pipes and redirects commands, in particular because I couldn't really see immediately why you would need to use them. I was able to use all of the commands below and in the core "Do This" sections of the course. I didn't actually run any of the chmod or xargs commands, and so will need to review those later, though in trying to keep with my time-management plan, I'm going to stop as I've spent ~4 hours already reviewing these.

I think the most important commands are the help & man command so that you can further research how a command works. The commands below do the following:

-pwd: prints the current working directory you are in

-ls: lists all of the folders and files in your current directory

-mv: moves or renames a folder or file (moves it if you assign it to a new folder, renames it if you keep the file extension or that new folder name doesn't exist)

-cd: sets a new directory

-../: moves your location up recursively into a higher directory

-touch: creates a new empty file

-mkdir: creates a new directory

-less: displays all of the contents of a file (in a new window --> "q" to quit)

-rmdir: removes a directory (sends an error if directory is not empty)

-rm: removes files or directories (use rm -r to remove a directory that contains files)

-help: pulls up a list of common commands; help + command tells you what that command does

## 1.4 Create, Fork, and Clone Repositories