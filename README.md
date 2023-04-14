# jcnf

Modify command-not-found message on your terminal with some random Japanese words

## Overview

I often mistype commands in the terminal which causes me to get errors. Every time I make a typo, the error message thar are displayed is something like this:

```console
$ nvum
nvum: command not found
```

The message is always the same over and over, which makes me wonder what if I modify the message by adding some random Japanese words.

I just want every time I mistyped a command in the terminal, I could learn some new words which would make me more proficient in Japanese!

## Prerequisites

Before using this project, make sure you have the following software installed:

- **zsh**: https://www.zsh.org/
- **git**: https://git-scm.com/downloads
- **curl**: https://curl.haxx.se/

## Installation

```console
curl -s -L https://raw.githubusercontent.com/skinnyfads/jcnf/main/install.sh | zsh
```

## Usage

In order to to use this, you can start by opening your terminal, and type any command that are wrong or simply doesn't exist. Look at this image, this is the moment when I type `nvum` command instead of `nvim`

![japanize command-not-found preview](https://s10.gifyu.com/images/Recording-2023-04-13-at-07.46.50.gif)

## Acknowledgements

I would like to thank Peter van der Woude because through [his website](http://jlptstudy.net/), he has provided a set of Japanese words that I can use in my project XD
