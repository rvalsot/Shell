# Shell Scripting

From the course: Shell Scripting: Discover How to Automate Command Line Tasks, available at Udemy.

## Introduction:

In this course, we will:

* Get started writing shell scripts
* Know what the _shebang_ is
* Create and use variables
* Testing and decision making.
* Command line argument processing
* I/O, include user input
* If statements, Functions / For Loops / Case Statements
* Exit statuses
* Debugging tips
* Logging
* Wild cards
* Bash shell options

## Shell Scripting

What is a script:
A Command Line program that contains a series of instructions that are executed by the Shell. They're used for automating tasks.

A basic script could be:
``` sh
#! /bin/bash
echo "This is a base Shell script"
```

This will need authorization to be executed, with `chmod` we can grant it:

``` shell
$ chmod 755 my_script
$ ./my_script.sh
```

The path that follows the shebang `#!` is to the interpreter used to execute our script. If absent, the current interpreter should be used (not a very idea).

Aside from Shell interpreters others such as Go, Python, C++, etc. can be automated.

__Variables__

Storage locations that have a name, they're Name-Value pairs, cases sensitive and, by convention, written in uppercase:

``` sh
#! /bin/bash
VARIABLE_NAME="Cows"
echo "${VARIABLE_NAME}addition"
```

The dollar sign is used to call them in the body. The `{}` encapsulation is to leave it free for paste.

A command output can be assigned into a variable:
``` sh
VARIABLE_NAME=$(command_output)
```
Some times, old-style is back ticks will be used instead of parentheses.

Variables' names use normal C convention.

__Tests__

Syntax:

```sh
[ contidion-to-test ]
```

Samples of tests may include: equal strings, greater than or file existence.4

__Control Flow__

If / Else If / Else statement:
``` sh
if [ condition-is-true ]
then
  command 1 ...
  command a
elif [ condition-is-true ]
then
  command b
else
  command c
fi

```

For Loops
``` sh
for VARIABLE_NAME in ITEM_1 ITEM_2 ITEM_N
do
  command 1 ...
  command n
done
```

__Positional Parameters__

Are parameters accessed via `$n`, where $n=\{0,1...,9\}$, for example, the script name is `$0`. Access to all the parameters is done via `$@`.

__Input__

Accepting User Standard Input (STDIN) is done with the command read:

``` sh
#! /bin/bash
read -p "Prompted message: " VARIABLE
echo "Archiving user: " $USER
```

## Exam 1:

1. Out of the following options, which one would be the first line of a shell script?: _Would be:_ `#! /bin/bash`. $\checkmark$
2. The first line of a shell script typically starts with a shebang followed by the path to an interpreter that will be used to execute the commands in the script: _True_. $\checkmark$
3. If you do not supply a shebang and specify an interpreter on the first line of the script, the commands in the script will be executed using your current shell: _True_. $\checkmark$
4. Which of the name variables is valid: _It is:_ `FIRST3LETTERS="ABC"`. $\checkmark$
5. What is the value of `$1` given the following command line: `$./add-user.sh tom rich harry`: _It is:_ `tom`. $\checkmark$
6. Which is the proper way to assign a value to a variable? _It is:_ `VAR="VALUE"`. $\checkmark$
7. Which of the following will assign the output of the "hostname" command to `HOSTNAME` variable? _It would be:_ `HOSTNAME=$(hostname)`. $\frac{1}{2}$

Grade: 7/8.

## Exit Statuses and Return Codes

To learn:

* Check the exit status of a command
* Make decisions based on it
* Use them in your own script

The exist status range from `0` to `255`, being `0` a success and any other, an error condition. To check the status for the previous code, use: `echo $?`

__Logical Operators__

| Operator | Use         |
| -------- | ----------- |
| `&&`     | Logical AND |
| `||`     | Logical OR  |

Note: second command in a `&&` will only execute if the first part return code is success! Analogously, if a `||` previous status is not success, second part will run.



## Miscellany

Arithmetic operators for tests:

| Operator  | Use                                   |
| --------- | ------------------------------------- |
| `a -eq b` | True if `a` is equal to `b`           |
| `a -ne b` | True if `a` is not equal to `b`       |
| `a -lt b` | True if `a` is less than `b`          |
| `a -le b` | True if `a` is less or equal than `b` |
| `a -gt b` | True if `a` is greater than `b`       |
| `a -ge b` | True if `a` is greater or equal to `b`|

File operators for tests:

| Operator  | Use                                   |
| --------- | ------------------------------------- |
| `-d File` | True if file is a directory           |
| `-e File` | True if file exists                   |
| `-f File` | The file exists and is a regular one  |
| `-r File` | True if file is readable to you       |
| `-s File` | True if file exists and is not empty  |
| `-w File` | True if file is writable to you       |
| `-x File` | True if file is executable to you     |

String operators for tests:

| Operator    | Use                                   |
| ----------- | ------------------------------------- |
| `-z String` | True if string is empty |
| `-n String` | True if string is not empty |
| `String1 = String2 ` | True if strings are equal |
