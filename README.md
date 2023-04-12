# jcnf

Modify command-not-found message on your terminal with some random Japanese words.

## Overview

I often mistype commands in the terminal which causes me to get errors. Every time I make a typo, the error message is displayed like this:

```console
$ nvum
nvum: command not found
```

The message is always the same over and over, which makes me wonder what if I modify the message by adding some random Japanese words.

I just want every time I mistyped a command in the terminal, I could learn some new words which would make me more proficient in Japanese!

## Prerequisites

Before using this project, make sure you have the following software installed:

- **zsh**: This project requires zsh, a popular shell, for running commands. You can install zsh using package manager on your operating system, or from the official zsh website: https://www.zsh.org/
- **git**: This project uses git for version control. You can install git from the official git website: https://git-scm.com/downloads
- **Node.js**: This project requires Node.js for front-end development. You can download and install the latest version of Node.js from the official Node.js website: https://nodejs.org/en/download/
- **curl**: This project uses curl, a command-line tool for transferring data with URLs, for certain operations. You can install curl using package manager on your operating system, or from the official curl website: https://curl.haxx.se/

Please ensure that you have these prerequisites installed and configured correctly in your development environment before proceeding with using this project.

## Installation

```console
curl -s -L https://raw.githubusercontent.com/skinnyfads/jcnf/main/install.sh | zsh
```

## Usage

In order to to use this, you can start by opening your terminal, and type any command that are wrong or simply doesn't exist.

Look at this image, this is the moment when I type `nvum` command instead of `nvim`. It make me got an error: `nvum: command not found` along with other message, and the message is some Japanese words!

![japanize command-not-found preview](https://s2.gifyu.com/images/Recording-2023-04-12-at-11.19.45.gif)

This is just a simple project I create on my free time. if you find this useful, don't forget to star this repository!

## Acknowledgements

I would like to thank Peter van der Woude because through [his website](http://jlptstudy.net/), he has provided a set of Japanese words that I can use in my project XD
