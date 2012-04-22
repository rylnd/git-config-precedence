git-config-precedence
=====================
Sandbox repo to test git and GitHub's handling of configuration permutations

# Background
After working on a bash script to configure the local git author to multiple users (for pair programming), I was alerted that GitHub had changed their UI to handle these situations differently than `git` itself.

This is an attempt to understand exactly what their logic is.

# Setup
Note: this is with git 1.7.5.4

## Controls
### GitHub
GitHub user and token for ryalnd in `~/.gitconfig`

### Global

```bash
$ git config --global user.name global.user.name
$ git config --global user.email global.user.email@gmail.com
```

## Variables
### Local via git

```bash
$ git config user.name local.user.name
$ git config user.email local.user.email@gmail.com
```

### Name and email via ENV vars

```bash
$ export GIT_AUTHOR_NAME="GIT_AUTHOR_NAME"
$ export GIT_AUTHOR_EMAIL="GIT.AUTHOR.EMAIL@gmail.com"
```

# Testing
I've done a series of commits, one for each of the 16 permutations of the variables being tested.

Results and analysis to follow.

# Recreation
To run a similar set of commits, simply source `repro_steps` in a git repository.

```bash
$ source repro_steps
```

Copyright (c) 2010 Ryland Herrick, released under the MIT license
