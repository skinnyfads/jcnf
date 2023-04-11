# jcnf

Modify command-not-found message on your terminal with some random Japanese words.

## Overview

When in the terminal, I often mistype a command which causes me to get an error. Every time I make a typo, the error message that are displayed is looks like this:

```console
$ pinf
pinf: command not found
```

The message is always the same over and over again, which makes me wonder what if I modify the message a little bit, so that every time I type the wrong command, I can see something other than the message above.

I think showing some random Japanese words is a good idea (at least for me), That is because I created this project just to make it easier for me to learn Japanese and I can feel more fun . I want that every time I type a wrong command in the terminal, I can learn some new words that make me more proficient in Japanese!

## Installation

- Clone this project

```console
git clone https://github.com/skinnyfads/japanize-command-not-found.git
```

- Copy the folder into your home directory

```console
mv japanize-command-not-found ~
```

- Add this to your `.zshrc` (I haven't tried `.bashrc` for now)

```zsh
function command_not_found_handler() {
  printf "\n-------------------------\n\n"
  printf "%s: command not found\n%s\n" $1
  printf "-------------------------\n\n"
  printf "Since you've typed the wrong command, here are some japanese words for you to memorize:\n\n"
  printf "-------------------------\n\n"

  node ./japanize-command-not-found/main.js

  printf "\n"
  printf "-------------------------\n\n"
  return 127
}
```

And that's it. Now you can just use the code!

## Usage

In order to to use this, you can start by opening your terminal, and type any command that are wrong or simply doesn't exist.

Look at this image, this is the moment when i type `nvum` command instead of `nvim`. It make me got an error: `nvum: command not found` along with other message, and the message is some Japanese words!

![image](https://user-images.githubusercontent.com/121819737/231297148-a69c71d4-72c1-4791-bb97-573e07d01aff.png)

This is just a simple project i create on my free time. if you find this useful, don't forget to star this repository!

## Acknowledgements

I would like to thank Peter van der Woude because through [his website](http://jlptstudy.net/), he has provided a set of Japanese words that I can use in my project XD
