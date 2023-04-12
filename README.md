# jcnf

Modify command-not-found message on your terminal with some random Japanese words.

## Overview

When in the terminal, I often mistype a command which causes me to get an error. Every time I make a typo, the error message that are displayed is looks like this:

```console
$ nvum
nvum: command not found
```

The message is always the same over and over again, which makes me wonder what if I modify the message a little bit, so that every time I type the wrong command, I can see something other than the message above.

I think showing some random Japanese words is a good idea (at least for me), That is because I created this project just to make it easier for me to learn Japanese and I can feel more fun . I want that every time I type a wrong command in the terminal, I can learn some new words that make me more proficient in Japanese!

## Installation

```console
curl -s -L https://raw.githubusercontent.com/skinnyfads/jcnf/main/install.sh | zsh
```

## Usage

In order to to use this, you can start by opening your terminal, and type any command that are wrong or simply doesn't exist.

Look at this image, this is the moment when i type `nvum` command instead of `nvim`. It make me got an error: `nvum: command not found` along with other message, and the message is some Japanese words!

![japanize command-not-found preview](https://s2.gifyu.com/images/Recording-2023-04-12-at-11.19.45.gif)

This is just a simple project i create on my free time. if you find this useful, don't forget to star this repository!

## Acknowledgements

I would like to thank Peter van der Woude because through [his website](http://jlptstudy.net/), he has provided a set of Japanese words that I can use in my project XD
