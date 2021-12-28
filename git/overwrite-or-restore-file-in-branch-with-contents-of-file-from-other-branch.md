# overwrite or restore file in branch with contents of file from other branch

tossed lots of log statements in multiple files, stashed in git along the way. 

Wanted to remove those diffs to clean up the PR. Here's how:

> git checkout main dev.rake
> git checkout main lib/tasks/dev.rake

```
> git checkout main bin/setup
Updated 1 path from b4e9410bd

> git checkout main dev/rake
error: pathspec 'dev/rake' did not match any file(s) known to git

> git checkout main dev.rake
error: pathspec 'dev.rake' did not match any file(s) known to git

> git checkout main lib/tasks/dev.rake
Updated 1 path from b4e9410bd

> gs
On branch improve-first-run-mac-osx
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   bin/setup
	modified:   lib/tasks/dev.rake

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Brewfile.lock.json


> gc -m "remove log statements"
[improve-first-run-mac-osx 3390ad615] remove log statements
 2 files changed, 7 insertions(+), 14 deletions(-)
```