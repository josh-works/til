# How to rename a branch in Git

From the branch to rename:

```shell
git branch -m old_name new_name
git push origin :old_name # tells git to delete remote branch
git branch --unset-upstream old_name
git push origin new_name
git push origin -u new_name
```

With usage, if starting from `git init`...

```
git branch -m main
```

Or if using git aliases like me:

`gb -m main`

![rename branch](/images/git-rename-branch.jpg)

### Resources

- [How do I rename both a Git local and remote branch name? (StackOverflow)](https://stackoverflow.com/questions/30590083/how-do-i-rename-both-a-git-local-and-remote-branch-name)