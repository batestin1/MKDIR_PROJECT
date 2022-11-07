<h1 align="center">
<img src="https://img.shields.io/static/v1?label=SHELL%20POR&message=MAYCON%20BATESTIN&color=7159c1&style=flat-square&logo=ghost"/>


<h3> <p align="center"> MKDIR PROJECT </p> </h3>
<h3> <p align="center"> ================= </p> </h3>



>> <h3> Description </h3>

<p> This project is a unique shell script that allows the creation of a template for personal work development. It automatically generates three directories:
1) Env: Where it stores a main shell script called 'env.sh' that creates and runs a python virtual environment. There is also a package.txt file which is where python libraries for the specified project will be inserted.
2) Script: where it stores a main file main.py with header for development.
3) README.md: Template for future git push
4) LICENSE: use license template.
5) IMG: Directory for inserting images of your projects</p>

>> <h3> How to Run </h3>

in your terminal (linux ou mac) run:

```
source start.sh

```

>> <h3> Architecture of building </h3>
>> <h3> Inside Root </h3>

```
-rw-r--r-- 1 bates bates  476 Nov  7 16:00 LICENSE
-rw-r--r-- 1 bates bates  490 Nov  7 16:00 README.md
drwxr-xr-x 2 bates bates 4096 Nov  7 16:00 env
drwxr-xr-x 2 bates bates 4096 Nov  7 16:00 img
drwxr-xr-x 2 bates bates 4096 Nov  7 16:00 script
-rw-r--r-- 1 bates bates 1326 Nov  7 16:00 start.sh

```
>> <h3> Inside Env </h3>

```
total 8
-rwxrwxrwx 1 bates bates 2786 Nov  7 16:00 env.sh
-rw-r--r-- 1 bates bates 1374 Nov  7 16:00 packages.txt

```

>> <h3> Inside script </h3>

```
total 4
-rwxrwxrwx 1 bates bates 1334 Nov  7 16:00 main.py

```

>> <h3> cat of env.sh </h3>

```
#!/bin/bash

###################################################################################################
#                                                                                                 #
# SCRIPT FILE: env.sh                                                                             #
# CREATION DATE: 07/11/2022                                                                       #
# HOUR: 15:59                                                                                     #
# DISTRIBUTION USED: UBUNTU                                                                       #
# OPERATIONAL SYSTEM: DEBIAN                                                                      #
#                                                                             DEVELOPED BY: BATES #
###################################################################################################
#                                                                                                 #
# SUMMARY: TEMPLATE QUE GERA DIRETORIOS E ARQUIVOS PARA SEU PROJETO                               #
#                                                                                                 #
###################################################################################################

# variables


```

>> <h3> cat of script.py </h3>

```
#!/usr/local/bin/python3

###################################################################################################
#                                                                                                 #
# SCRIPT FILE: main.py                                                                            #
# CREATION DATE: 07/11/2022                                                                       #
# HOUR: 15:59                                                                                     #
# DISTRIBUTION USED: UBUNTU                                                                       #
# OPERATIONAL SYSTEM: DEBIAN                                                                      #
#                                                                             DEVELOPED BY: BATES #
###################################################################################################
#                                                                                                 #
# SUMMARY: TEMPLATE QUE GERA DIRETORIOS E ARQUIVOS PARA SEU PROJETO                               #
#                                                                                                 #
###################################################################################################

# variables



```