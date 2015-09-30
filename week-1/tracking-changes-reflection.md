##How does tracking and adding changes make developers' lives easier?
  Tracking & adding changes makes our lives easier because it allows us to effectively collaborate by working on the same project concurrently without messing up each others' work. We can easily see which collaborators made which changes when, and can revert back to a previous version if necessary.
##What is a commit?
  A commit is basically when we stage a set of changes/work we've done before pushing them to our feature branch. We include a brief summary of the changes and intent behind them, so that our teammates can easily track & understand what was done.
##What are the best practices for commit messages?
  Commit messages should have a subject line that is <50 characters, followed by a space and then additional lines of supporting details as necessary. The supporting details should be kept to 72 characters or less for readability in the commit logs.
##What does the HEAD^ argument mean?
  The HEAD^ argument is used to reset changes to files after having made a commit, in the case that you have decided you're not ready to push those changes after all and you you want to go back and make additional edits before pushing and creating a pull request. You can also use the HEAD syntax to just reset the current commit you're working on (before you've actually commited), or you can likeiwse reset even older previous commits with HEAD~N, where N is the number of commits back you want to undo.
##What are the 3 stages of a git change and how do you move a file from one stage to the other?
   The first stage is untracked - any time you've made changes to a file locally and saved those changes, git will recognized them as untracted changes.
   The second stage is staged changes - where you have called the 'git add' command on the changed files, basically prepping them to be committed to your branch.
   The third stage is committed, where you call the 'git commit' command actually commit those changes to your branch and provide a commit message summarizing what you did and why.
##Write a handy cheatsheet of the commands you need to commit your changes?
  I'm storing my cheatsheet in the google doc linked below where it will probably evolve further over the coming days, but here it is so far:

  https://docs.google.com/document/d/1hKmYukEK1k08hG-c7BUhb4sx4o6S47a6LZiFcVFpphU/edit#

  PULL REQUEST WORKFLOW
git checkout master
git pull origin master
git checkout -b new-branch-name
---WORK WORK---
git status
git add
git status (make sure all desired files are staged & ready to be committed)
git commit -m “commit message”
git push origin new-branch-name
---Then go access GitHub in the browser and make the pull request + merge --
git checkout master
git pull origin master
(alternative to last command is the fetch + merge sequence)
git fetch origin master
git merge origin/master
TO CREATE A LOCAL BRANCH
git checkout -b branch-name
TO DELETE LOCAL BRANCH
git branch -d branch-name
TO REMOVE GIT TRACKING FROM A DIRECTORY
rm -rf .git
TO REVIEW/CONFIRM ORIGIN OF GIT REMOTE REPO
git remote show origin

##What is a pull request and how do you create and merge one?
A pull request is where you are basically telling GitHub you want to review the differences between two branches (a master and a feature-branch), and then merge the changes from the feature-branch into the master.
##Why are pull requests preferred when working with teams?
Pull requests are useful so that prior to merging your feature-branch changes into master, you can invite your teammates to review your pull-request, and ask any questions / make any comments prior to actually merging it into master. GitHub's UI makes it very easy for teammates to see the changes for each of your commits, so they can review and then give you the thumbs up that the pull request can be made.