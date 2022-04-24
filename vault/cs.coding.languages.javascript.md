---
id: ygpfw6zz2yc3wwvon5py1g2
title: JavaScript
desc: ''
updated: 1647631237684
created: 1647630676880
---

## Install Javascript runtime

To execute Javascript code you can either embed it into a website and run it in your browser, install node or use any online editor.

**Node:**

Check if node is availability by typing in the shell:

```shell
 node --version
```

If you find that you do not have node installed on your computer, then you can download it for free from the following website: https://nodejs.org/en/

**Website:**

create a .html file in which you link to your "myscript" javascript file

```html
<html>
...
<script src="myscript.js"></script>
...
```

## Run Javascript program

**Node:**

Once you have node installed you can run any "_program_.js" by typing in the shell:

```shell
node program.js
```

**Website:**

Open the .html file that embeds to your "_program_.js" file in any web browser like Chrome and open the dev tools to see the javascript console


## The Javascript Command Line

To test a short amount of code in Javascript sometimes it is quickest and easiest not to write the code in a file. This is made possible because Javascript can be run as a command line in node.

Enter the shell by typing

```shell
node
```

From there you can write any javascript, including our hello world example:

```shell
Welcome to Node.js v16.10.0.
Type ".help" for more information.
> console.log("Hello, World!")
```

Whenever you are done in the node command line, you can simply type the following to quit the node command line interface:

```shell
> .exit
```

**Note**: this works similar in the browser dev tools

## What is Javascript?

Javascript is one of the most popular programming languages and was created to add programmatic logic to otherwise static html sites. Javascript therefor runs directly in the browser, however a stripped down and modified browser called "node" was created to be used like any other program interpreter like python.

It is used for:

- web development (server-side and client side),
- automation (nodered),

## What can Javascript do?

- Javascript can be used to create the logic of web development (front-end, back-end,...)
- Javascript can be used to automate certain tasks with the help of "nodered"

## Why Javascript?

- Javascript is the standard for website logic.
- Javascript is very high level and therefor very easy to understand

## Javascript Syntax compared to other programming languages

- You should end a line in Javascript with a semicolon (";") but you don't have to
- Javascript also doesn't care about indentation (but you should anyway for visibility)

## Javascript Hello World

Code for a Program that prints "Hello, World!" in Python

```javascript
console.log("Hello, World!");
```

## Comments

In Javascript you can write in-line comments like:

```javascript
// in-line comments
```

or you can write comments over multible lines:
```javascript
/* multi
line
comments */
```

## Variables

Javascript has the following data types:

| Type   | Semantic    |
|--------------- | --------------- |
| undefined   | something that hasn't been defined   |
| null   | nothing |
| boolean   | true or false  |
| string  | any sort of text  |
| symbol | immutable primitive value that is unique |
| number | just a number |
| object | can store a lot of key-value pairs |

A variable is like a label to data (similar to a box).
Javascript is not strongly typed which means that a variable can change it's type at any time.
Also we don't have to (but could) specify the type on initialization:

```javascript
var myName = "Bob";
myName = 8;
```

You can also exchange `var` by `let` to make the variable only visible in the scope. <br>
You can also exchange `var` by `const`  to make the variable immutable.

```javascript
let ourName = "Knowledgebase";
const pi = 3.14;
```