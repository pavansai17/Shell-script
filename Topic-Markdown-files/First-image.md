# Shell Scripting Cheat Sheet

A comprehensive guide to shell scripting basics, operators, and conditional statements.

---

## Table of Contents

- [Shebang Operator](#shebang-operator)
- [Variables](#variables)
- [Input and Output Commands](#input-and-output-commands)
- [Operators](#operators)
  - [Arithmetic Operators](#1-arithmetic-operator)
  - [Relational Operators](#2-relational-operator)
  - [Logical Operators](#3-logical-operators)
  - [String Operators](#4-string-operators)
  - [File Operators](#5-file-operators)
- [Conditional Statements](#conditional-statements)
  - [if Statement](#1-if-statement)
  - [if-else Statement](#2-if-else-statement)
  - [elif Statement](#3-elif-statement)
  - [Nested if Statement](#4-nested-if-statement)

---

## Shebang Operator

```bash
#!/bin/bash
```

This operator is used at the start of the script, where it will denote which shell we are using inside the script file.

### Script 1

```bash
#!/bin/bash

echo "welcome to shell script"
```

> Once after modifying the script, provide execute permission:
> ```bash
> chmod +x <filename>.sh
> ```
> Execute the script by using absolute or relative path.

### Script 2

```
alpha
├── beta
└── gamma
```

```bash
#!/bin/bash

mkdir alpha
cd alpha
mkdir beta gamma
```

---

## Variables

It is a named memory location which is used to store the value.

- To declare and initialize a variable in shell script: `var_name=<value>`
- To access the variable: `$var_name`

---

## Input and Output Commands

- To take user input we have a command: `read <var_name>`
- To fetch the output we have a command: `echo "$<var_name>"`
- To take user input and print a statement at a time we have a command: `read -p "statement" <var_name>`

### Example 1

```bash
#!/bin/bash

echo "enter favorite movie"
read movie
echo "enter the ratings of the movie"
read ratings
echo "overall feedback"
read feedback

echo "favorite movie: $movie"
echo "ratings of the movie: $ratings"
echo "overall feedback: $feedback"
```

### Example 2

```bash
#!/bin/bash

read -p "next trip:" trip
read -p "how many days?" days

echo "next trip is planned for $trip"
echo "the total number of days planned: $days"
```

---

## Operators

Operators are used to perform some actions on the operands.

### Types of Operators

1. Arithmetic operator
2. Relational operator
3. Logical operator
4. String operator
5. File operator

---

### 1. Arithmetic Operator

Operators: `+`, `-`, `*`, `/`, `%`

#### Example

```bash
#!/bin/bash

a=10
b=20
res=$((a+b))

echo "sum of 2 number is $res"
```

#### By Taking User Input

```bash
#!/bin/bash

read -p "enter the value of a: " a
read -p "enter the value of b: " b
res=$((a+b))

echo "sum of 2 number is $res"
```

#### Write a Script Where Take 2 Numbers as User Input and Perform

- addition
- sub
- mul
- div
- modulus
- increment 1 for first number
- decrement 1 for second number

> Print the final values.

---

### 2. Relational Operator

Operators: `>`, `<`, `>=`, `<=`, `==`, `!=`

In shell scripting:

| Operator | Description |
|----------|-------------|
| `-lt` | lesser than |
| `-gt` | greater than |
| `-le` | lesser than or equals to |
| `-ge` | greater than or equals to |
| `-eq` | equals to |
| `-ne` or `!=` | not equals to |

---

### 3. Logical Operators

| Operator | Description |
|----------|-------------|
| `-a` | AND |
| `-o` | OR |
| `!` | NOT |

---

### 4. String Operators

| Operator | Description |
|----------|-------------|
| `==` | Equals to - checks whether both strings are equal |
| `!=` | Not equal to - checks whether both strings are not equal |
| `-z` | Empty - checks whether strings are empty |
| `-n` | Not empty - checks whether strings are not empty |

#### Example 1: Equals To

```bash
#!/bin/bash

str1="abc"
str2="abc"

if [ "$str1" == "$str2" ]
then
    echo "strings are equal"
fi
```

#### Example 2: Not Equals To

```bash
#!/bin/bash

str1="xyz"
str2="abcd"

if [ "$str1" != "$str2" ]
then
    echo "strings are not equal"
fi
```

#### Example 3: Empty (`-z`)

```bash
#!/bin/bash

str1=""

if [ -z "$str1" ]
then
    echo "string is empty"
fi
```

#### Example 4: Not Empty (`-n`)

```bash
#!/bin/bash

str1="abc"

if [ -n "$str1" ]
then
    echo "string is not empty"
fi
```

---

### 5. File Operators

| Operator | Description |
|----------|-------------|
| `-e` | Exists - checks whether file or directory exists or not |
| `-d` | Directory - checks whether directory exists or not |
| `-f` | File - checks whether file exists or not |
| `-r` | Read - checks whether file has read permissions or not |

#### Example 1: Exists (`-e`)

```bash
#!/bin/bash

file="/home/sharath/shell_Script/script1.sh"

if [ -e $file ]
then
    echo "$file exists"
fi
```

#### Example 2: Directory Only (`-d`)

```bash
#!/bin/bash

file="/home/sharath/shell_Script/script1.sh"

if [ -d $file ]
then
    echo "$file directory exists"
fi
```

#### Example 3: File Only (`-f`)

```bash
#!/bin/bash

file="/home/sharath/shell_Script/script1.sh"

if [ -f $file ]
then
    echo "$file file exists"
fi
```

---

## Conditional Statements

1. if statement
2. if else statement
3. elif statement
4. nested if statement
5. switch statement

---

### 1. if Statement

#### Syntax

```bash
if [ condition ]
then
    # executable statements
fi
```

#### Example

```bash
#!/bin/bash

a=20
b=10

if [ $a -gt $b ]
then
    echo "$a is greater than $b"
fi
```

---

### 2. if-else Statement

#### Syntax

```bash
if [ condition ]
then
    # statements
else
    # statements
fi
```

#### Example: Check Person is Eligible to Watch Toxic Movie or Not

```bash
#!/bin/bash

read -p "enter the age to watch movie toxic: " age

if [ $age -ge 18 ]
then
    echo "eligible to watch toxic movie"
else
    echo "sorry its fairy tale for grown ups"
fi
```

---

### 3. elif Statement

#### Syntax

```bash
if [ condition ]
then
    # executable statements
elif [ condition ]
then
    # executable statements
....
else
    # executable statements
fi
```

#### Example: Write a Script to Find Largest Between 3 Numbers

```bash
#!/bin/bash

echo "enter 3 numbers"
read a b c

if [ $a -gt $b -a $a -gt $c ]
then
    echo "$a is greater"
elif [ $b -gt $a -a $b -gt $c ]
then
    echo "$b is greater"
else
    echo "$c is greater"
fi
```

---

### 4. Nested if

#### Syntax

```bash
if [ condition ]
then
    if [ condition ]
    then
        # executable statements
    else
        # executable statements
    fi
else
    # executable statements
fi
```

#### Example

```bash
#!/bin/bash

read -p "enter the domain you want to get placed in: " domain

if [ "$domain" == "devops" ]
then
    read -p "enter which cloud you want to learn: " cloud
    if [ "$cloud" == "AWS" ]
    then
        echo "sharath sir is trainer"
    else
        echo "learn by yourself"
    fi
else
    echo "dont mention any other domain"
fi
```

---

> **Note:** After modifying the script, always provide execute permission using `chmod +x <filename>.sh` and then execute it using the absolute or relative path.

