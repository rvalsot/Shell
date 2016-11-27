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

### Exam 1:

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

Semicolon `;` is the end of line and helps you ensure all your single-line commands are executed.

You can specify exit status numbers ranging from $\{0,1,...,255\}$ to know what happened with the `exit n` command.

### Exam 2

1. All commands, including shell scripts, return an exit status: _True_.
2. What are the valid exit statuses? _0-255_
3. Which special variable contains the value of the exist status of the previously executed command? _It is_: `$?`
4. What symbol means "AND"? _It is_: `&&`
5. Which symbol means "OR"? _It is_: `||`
6. In the sample `mkdir /tmp && cp test.txt /tmp`, if the first part fails, the second will be executed? _False_
7. Commands separated by semicolon will be executed no matter the exit status of the previous command. _True_
8. What is the exit status of script: _Will be the one of the `uptime` command_
``` sh
#! /bin/bash
hostname
uptime
```
9. If you want to control the exit status of a shell script, what command should you use? _You should use_: `exit n`

9/9

## Functions

Objectives:
* Why use them, how to create them, how to use them, their parameters
* Variables' scope
* Exit statuses and return codes

Functions are part of DRY philosophy. They standard declaration and use are:
``` sh
function function_name () {
  # do something...
}
# Or just:
function_name () {
  #do something...
}

# Use it:
function_name
```

Gotta declare them before use, they're not pre-compiled.

Functions can accept parameters, stored as positional ones an accessed via `$n`.

__Scope__

_Global Variables_: By default, all variables are global and should be used before defined.
Variables defined inside functions are available out until you call them.
_Local Variables_: are made with the `local MY_VARIABLE` keyword, they can be used only inside functions.

__Exit Status__

Functions have exit status, which can be explicitly used with: `return <RETURN_CODE>` or implicitly are the las command exit status.

### Exam 3:

1. In programming, DRY stands for: _"Don't Repeat Yourself"_
2. Functions allow you to:
    * _Write a block of code once and use it multiple times_
    * _Potentially reduce the length of your shell script_
    * _Maintain your scripts by reducing the number of places you need to edit and troubleshoot_
3. Functions can be defined anywhere in a script and be used at any time during a shell script: _False_
4. What is the proper way to call a function: _As plain as_: `function_name`
5. What is the output of a function using `$2`: _The second given parameter_
6. By default, all variables all local in scope: _False_.
7. You should precede with which keyword to make variables local: _With_: `local VARIABLE_NAME`
8. Which command will cause a function to return an exit status of 1: _It will be_: `return 1`

## Complementary Sources

Extras for the Course
* [Variables](http://www.thegeekstuff.com/2010/05/bash-variables/)

## Wildcards

## Templates

A suggested Shell Script Order / Checklist is:

1. `shebang`
2. Comments/ file header / author references
3. Global Variables declaration
4. Functions (and their local variables first)
5. Main script contents
6. Exit with a defined `exit <STATUS>` at needed points.

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
