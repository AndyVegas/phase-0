How does tracking and adding changes make developers' lives easier?
What is a commit?
What are the best practices for commit messages?
What does the HEAD^ argument mean?
What are the 3 stages of a git change and how do you move a file from one stage to the other?
Write a handy cheatsheet of the commands you need to commit your changes?
What is a pull request and how do you create and merge one?
Why are pull requests preferred when working with teams?

1) Tracking and adding changes allows developers to easily view modifications before committing.  Nothing slips through the cracks!  Commit early and often!

2) A commit saves tracked changes and prepares them to be pushed to a remote repository.

3) The first line of the commit message should be a short description (roughly 50 characters). The body should always use the imperative.  The message should tell someone what applying the commit will do, rather than what the coder changed. 

4) HEAD is a reference to the last commit in the current checked out branch.

5) First you "track" the file by making changes.  Status of the file can be checked using git status.  Next you "stage" the file, using git add.  Last you "commit" the file using commit -m and adding a message.

6) 	cd into the master
	git pull 
	git checkout -b branch_name
	*work work work*
	git add
	git commit -m
	git push origin branch_name

7) A pull request lets you tell others about changes you've pushed into a repo.  Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and push follow-up commits if necessary.  This step is made easy by GitHub - Click Merge pull request and add a message.  Then Confirm merge.  Finally delete the branch to keep the repo tidy.  

8) Pull requests are an excellent tool for promoting code review.  For team projects, this is preferable over the "fork and pull" model because it is easier - there are less branches and remotes to keep track of.



