# bash_profile Boilerplate

A basic bash setup for Macs @ bleech.

## Installation

First clone this repository and cd into it.

```
git clone git@github.com:bleech/bash_profile-boilerplate.git && cd bash_profile-boilerplate
```

Then symlink the bash_profile-boilerplate to your user root directory.

```
ln -sf $(pwd)/bash_profile-boilerplate.sh ~/.bash_profile-boilerplate
```

Install bash-completion and gitprompt.

```
brew install bash-completion bash-git-prompt
```

Finally, prepend the following lines to your .bash_profile in your user root directory.

```
if [ -f ~/.bash_profile-boilerplate ]; then
  source ~/.bash_profile-boilerplate
fi
```

## Features

- custom prompt including git branch
- unset mailcheck
- enable colors
- give privileges to user bin paths
- directory access shortcuts
- directory command shortcuts
- always ensure strongest image optimization settings
- load rvm
- load git bash completion

## Dependencies

- [npm](https://npmjs.org/)
- [RVM](https://rvm.io/)
- [bash-completion](http://bash-completion.alioth.debian.org/)
- [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt)
