---
id: uaw977wfervv6rqj1a5d063
title: Python
desc: ''
updated: 1647631387844
created: 1647631287040
---

## About Python

Python is an interpreted high-level general-purpose programming language. Its design philosophy emphasizes code readability with its use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.

Python is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented and functional programming. It is often described as a "batteries included" language due to its comprehensive standard library

## Check for Python installation

On most systems Python already is installed. Check if Python is available by typing in the shell:

```shell
 python --version
```

If you find that you do not have python installed on your computer, then you can download it for free from the following website: https://www.python.org/

## Run Python programm

Once you have Python installed you can run any "_program_.py" by typing in the shell:

```shell
python program.py
```

## The Python Command Line

To test a short amount of code in python sometimes it is quickest and easiest not to write the code in a file. This is made possible because Python can be run as a command line itself.

Enter the shell by typing

```
python
```

From there you can write any python, including our hello world example:

```shell
C:\Users\Your Name>python
Python 3.6.4 (v3.6.4:d48eceb, Dec 19 2017, 06:04:45) [MSC v.1900 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> print("Hello, World!")
```

Whenever you are done in the python command line, you can simply type the following to quit the python command line interface:

```shell
>>> exit()
```

## What is Python?

Python is a popular programming language. It was created by Guido van Rossum, and released in 1991.

It is used for:

- web development (server-side),
- software development,
- mathematics,
- system scripting.

## What can Python do?

- Python can be used on a server to create web applications.
- Python can be used alongside software to create workflows.
- Python can connect to database systems. It can also read and modify files.
- Python can be used to handle big data and perform complex mathematics.
- Python can be used for rapid prototyping, or for production-ready software development.

## Why Python?

- Python works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc).
- Python has a simple syntax similar to the English language.
- Python has syntax that allows developers to write programs with fewer lines than some other programming languages.
- Python runs on an interpreter system, meaning that code can be executed as soon as it is written. This means that prototyping can be very quick.
- Python can be treated in a procedural way, an object-oriented way or a functional way.

## Python Syntax compared to other programming languages

- Python was designed for readability, and has some similarities to the English language with influence from mathematics.
- Python uses new lines to complete a command, as opposed to other programming languages which often use semicolons or parentheses.
- Python relies on indentation, using whitespace, to define scope; such as the scope of loops, functions and classes. Other programming languages often use curly-brackets for this purpose.

## Python Hello World

Code for a Program that prints "Hello, World!" in Python

```python
print("Hello, World!")
```

## Execute Python Syntax

As we learned in the previous page, Python syntax can be executed by writing directly in the Command Line:

```shell
>>> print("Hello, World!")
Hello, World!
```

Or by creating a python file on the server, using the .py file extension, and running it in the Command Line:

```shell
python myfile.py
```

## Python Indentation

Indentation refers to the spaces at the beginning of a code line.

Where in other programming languages the indentation in code is for readability only, the indentation in Python is very important.

Python uses indentation to indicate a block of code:

- Python will give you an error if you skip the indentation!
- The number of spaces is up to you as a programmer, but it has to be at least one
- You have to use the same number of spaces in the same block of code, otherwise Python will give you an error

```python
if 5 > 2:
  print("Five is greater than two!")
```
