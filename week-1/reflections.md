## 1.1 Think About Time

I learned about Csikszentmihalyi’s Flow and the clear steps to take to achieve happiness and efficiency in your work.  I plan to use this concept combined with time boxing and short, necessary breaks. 

Must stay challenged by the task - not easily bored
Concentration - no distractions - intense focus on the subject
Working towards clear and achievable goals
Rapid feedback
 
Time boxing is a time management concept involving strict working intervals, minutes or hours depending on the tasks/project. The focus seems more on achieving quickly and in a specific time frame, rather than completing a goal.  The pomodoro technique uses 25 minute time frames with a few minutes of prep and a few minutes of reflection at the beginning and end respectively. 

I currently manage my time rather haphazardly and have become used to a “feast or famine” schedule at work - two to four hours of frenetic work spliced with periods of waiting.  This strategy won’t work going forward and I like the structure that comes with the pomodoro technique.  I’m also guilty of not taking enough breaks, and the idea of time boxes will help with that. 


## 1.2 The Command Line

A shell is a user interface for access to an operating system's services.  Bash is a language interpreter used to communicate with the shell - UNIX in this case.  Stands for Bourne Again SHell, prompt is $.  

The video was pretty long, and the voice slightly monotonous, but using some simple time management techniques learned in yesterday, I still enjoyed it and powered through in three quick sessions. 

I was successfully using all the commands but I had trouble with some of the “Do More” sections of the crash course. 

The cd (change directory command) is obviously very important and pretty much the first thing taught.  cd bang dollar (!$) seems like a real time saver, running a command with the last argument you used.  Copying (cp) files is definitely something we’ll need in Git. 

-pwd print working directory

-ls list dir

-mv move

-cd change dir

-../ up one

-touch make a blank file   (?)

-mkdir make dir

-less shows a screens worth of text from a large file

spacebar loads another “less” screen   (?)

-rmdir remove dir

-rm (?)

-help help screen with lists of commands


## 1.4 Forking and Cloning

These tasks are actually quite straightforward with GitHub.  A repository (repo) is where you store projects on GitHub - can be thought of as a folder.  After clicking +, and then New repository, the rest is rather self explanatory.  Public repos are visible to any user on GitHub.  I don’t fully understand the MIT License aspect but I will research it.  You can commit after creating a new repo.

Forking a repo is equally user-friendly.  A fork is a copy of a repo, and forking allows you to experiment with changes without affecting the original project - or use someone else’s code as a starting point for your own development.  Open source allows for sharing and collaborating on code, which should help everyone produce better, more reliable software. 

Creating a local clone of your fork requires going into the Terminal with a copy of the clone URL to paste in.  This is where the commands come into play, namely - git clone.  Creating a clone allows you to have a local copy (files on your computer) of your forked repo.

I had some minor trouble cloning with SSH vs HTTPS and generating my SSH key.  Thankfully, the GitHub Help section is a wealth of easy to search information, with easy to follow instructions. 

$ ssh-keygen -t rsa -b 4096 -C “crowley.andrew@gmail.com“

After using a few easy commands and setting up a passphrase, I added the key to the ssh-agent and to my GitHub profile settings and tested the connection. 

$ pbcopy < ~/.ssh/id_rsa.pub

Here's the message I wanted to see - "Hi AndyVegas! You've successfully authenticated, but GitHub does not provide shell access."