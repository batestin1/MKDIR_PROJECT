#!/bin/bash

#####################################################################
#
# script name: mkdir_project.sh
# created in: 21/19/22
# modified in: 09:14:41
#
# summary: start um project
#                                               developed by: bates
#####################################################################

#variables


if [ $?  -eq 0 ]
then
     #variables

     DATE=$(echo ' CREATION DATE:' $(date +%d/%m/%Y ))
     DATE_NUM_WORD=$(echo $DATE | wc -L)
     HOUR=$(echo ' HOUR:' $(date +%H:%M ))
     HOUR_NUM_WORD=$(echo $HOUR | wc -L)
     SYSTEM=$(echo ' DISTRIBUTION USED:' $(cat  /etc/*-release | grep -i DISTRIB_ID | sed 's/DISTRIB_ID=//g' | sed 's/"//g' | tr a-z A-Z))
     SYSTEM_NUM_WORD=$(echo $SYSTEM_NUM_WORD | wc -L)
     SO=$(echo ' OPERATIONAL SYSTEM:' $(cat  /etc/*-release | grep -i ID_LIKE | sed 's/ID_LIKE=//g' | sed 's/"//g' | tr a-z A-Z))
     SO_NUM_WORD=$(echo $SO_NUM_WORD | wc -L)
     USER=$(echo ' DEVELOPED BY:' $(whoami | tr a-z A-Z))
     USER_NUM_WORD=$(echo $USER | wc -L)
     read -p "Insert the name of your project: " DIR 
     read -p "Enter the summary of your project: " SUMARY
     DIR_THRET_FOR_HEAD=$(echo "$DIR" | tr  A-Z a-z | sed 's/ /_/g')
     DIRR=$(echo ' SCRIPT FILE:' $DIR_THRET_FOR_HEAD/env/env.sh)
     DIRR_NUM_WORD=$(echo $DIRR | wc -L)
     SUMM=$(echo ' SUMMARY:' $SUMARY | tr a-z A-Z )
     SUMM_NUM_WORD=$(echo $SUMM | wc -L)
     HASH=$(seq -s '#' 100 | sed 's/[0-9]//g')
     SPACE=$(seq -s ' ' 98 | sed 's/[0-9]//g')
     USER_FORMAT=$(seq -s ' ' $(expr 96 - $USER_NUM_WORD) | sed 's/[0-9]//g')
     DATE_FORMAT=$(seq -s ' ' $(expr 97 - $DATE_NUM_WORD) | sed 's/[0-9]//g')
     HOUR_FORMAT=$(seq -s ' ' $(expr 97 - $HOUR_NUM_WORD) | sed 's/[0-9]//g')
     SYSTEM_FORMAT=$(seq -s ' ' $(expr 72 - $SYSTEM_NUM_WORD) | sed 's/[0-9]//g')
     SO_FORMAT=$(seq -s ' ' $(expr 71 - $SO_NUM_WORD) | sed 's/[0-9]//g')
     SUMM_FORMAT=$(seq -s ' ' $(expr 97 - $SUMM_NUM_WORD) | sed 's/[0-9]//g')
     DIR_FORMAT=$(seq -s ' ' $(expr 107 - $DIRR_NUM_WORD) | sed 's/[0-9]//g')
   
     sleep 1
     echo "Building your project"
     sleep 1
     mkdir -p $DIR_THRET_FOR_HEAD/env
     mkdir -p $DIR_THRET_FOR_HEAD/script
     mkdir -p $DIR_THRET_FOR_HEAD/img

     if [ -d $DIR_THRET_FOR_HEAD/ ]; then
          
          echo '<h1 align="center">' > $DIR_THRET_FOR_HEAD/README.md
          echo '<img src="https://img.shields.io/static/v1?label='$DIR_THRET_FOR_HEAD'%20POR&message=MAYCON%20BATESTIN&color=7159c1&style=flat-square&logo=ghost"/>' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          TITLE=$(echo $DIR_THRET_FOR_HEAD | sed 's/_/ /g' | tr a-z A-Z)
          echo '<h3> <p align="center"> '$TITLE'  </p> </h3>' >> $DIR_THRET_FOR_HEAD/README.md
          echo '<h3> <p align="center"> ================= </p> </h3>' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '>> <h3> Solution Architecture </h3>' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '![delta](img/img.png)' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '>> <h3> Description </h3>' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '<p> insert your text here </p>' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '>> <h3> How to Run </h3>' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo 'in your terminal (linux ou mac) run:' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '```' >> $DIR_THRET_FOR_HEAD/README.md
          echo 'source start.sh' >> $DIR_THRET_FOR_HEAD/README.md
          echo '' >> $DIR_THRET_FOR_HEAD/README.md
          echo '```' >> $DIR_THRET_FOR_HEAD/README.md

          echo '' > $DIR_THRET_FOR_HEAD/LICENSE
          echo 'MIT License' >> $DIR_THRET_FOR_HEAD/LICENSE
          echo 'Copyright (c) 2018 Yan Orestes' >> $DIR_THRET_FOR_HEAD/LICENSE
          echo 'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge,publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:' >> $DIR_THRET_FOR_HEAD/LICENSE
          
     else
           echo "Something went wrong"
     fi




     if [ -d $DIR_THRET_FOR_HEAD/env ]
     then
          echo "#!/bin/bash" > $DIR_THRET_FOR_HEAD/env/env.sh
          echo "" >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo $HASH >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'" SCRIPT FILE: $(basename "$DIRR")""$DIR_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$DATE""$DATE_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$HOUR""$HOUR_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$SYSTEM""$SYSTEM_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$SO""$SO_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$USER_FORMAT""$USER "'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo $HASH >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$SUMM""$SUMM_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo $HASH >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo "" >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo "# variables" >> $DIR_THRET_FOR_HEAD/env/env.sh
          echo "" >> $DIR_THRET_FOR_HEAD/env/env.sh

          echo "#!/bin/bash" > $DIR_THRET_FOR_HEAD/start.sh
          echo "" >> $DIR_THRET_FOR_HEAD/start.sh
          echo $HASH >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'" SCRIPT FILE: start.sh ""$DIR_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$DATE""$DATE_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$HOUR""$HOUR_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$SYSTEM""$SYSTEM_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$SO""$SO_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$USER_FORMAT""$USER "'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo $HASH >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$SUMM""$SUMM_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/start.sh
          echo $HASH >> $DIR_THRET_FOR_HEAD/start.sh
          echo "" >> $DIR_THRET_FOR_HEAD/start.sh
          echo "# variables" >> $DIR_THRET_FOR_HEAD/start.sh
          echo "" >> $DIR_THRET_FOR_HEAD/env/start.sh

          if [ -f $DIR_THRET_FOR_HEAD/env/env.sh ]; then
               pip freeze | sed 's/[0-9]\+//g' | sed 's/[=,..]\+//g' > $DIR_THRET_FOR_HEAD/env/packages.txt
               echo "" >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo -E 'COUNT=$('cat  $DIR_THRET_FOR_HEAD/env/packages.txt' | 'sed "':a;$!N;s/\n/ /;ta;'"')' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo -E 'FILE=$('cat $DIR_THRET_FOR_HEAD/env/packages.txt')' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo 'if  [ $? -eq 0 ] > /dev/null' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo 'then' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    echo "Checkingn if the programs are installed properly"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    if which python3 > /dev/null' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    then' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "Python Installed"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        python3 --version' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        if which pip3 > /dev/null' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        then' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '            echo "Pip Installed"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '            pip3 --version' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        fi'>> $DIR_THRET_FOR_HEAD/env/env.sh
               echo ''>> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    else' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "Python Not Installed"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sleep 2' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "Installing the software"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sudo apt update -y' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sudo apt upgrade -y' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sudo apt install python3 -y' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sudo apt install python3-pip -y' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sudo apt install python3-venv -y' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        clear' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sleep 2' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "Python Installed"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        python3 --version' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    fi' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    echo "Creating a environment"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    sleep 2' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    python3 -m venv python_env' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    . python_env/bin/activate' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo ''>> $DIR_THRET_FOR_HEAD/env/env.sh
               echo ''   >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    echo "Environment call $NAME_ENV was created and activate with sucess!"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo 'else' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    echo "You get a error!"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo 'fi' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '' >> $DIR_THRET_FOR_HEAD/env/env.sh

               echo '' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo 'for i in $COUNT' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo 'do' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo -E '    CHECK=$(pip show "$i" | grep -i "$i" | sed -n '1p' | sed '"'s/Name://g'"')' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    if [ $CHECK = "$i" ] 2>/dev/null' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    then' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sleep 1' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "The package $i is already installed"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    else' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sleep 1' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "The package $i is not installed"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sleep 1' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "Installing $i now"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        pip3 install $i' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        sleep 1' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '        echo "The package $i is already installed"' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '    fi' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo 'done' >> $DIR_THRET_FOR_HEAD/env/env.sh
               echo '' >> $DIR_THRET_FOR_HEAD/env/env.sh
               
               sleep 1
               if ! [ -x $DIR_THRET_FOR_HEAD/env/env.sh ]; then
                    chmod -R 777 $DIR_THRET_FOR_HEAD/env/env.sh
                    sleep 1
               else
                    echo "Execute of $DIR_THRET_FOR_HEAD/env/env.sh permission denied"
               fi

          fi
     else
          echo "Something went wrong"
     fi

     if [ -d $DIR_THRET_FOR_HEAD/script ]
     then
          DIR_THRET_FOR_HEAD=$(echo "$DIR" | tr  A-Z a-z | sed 's/ /_/g')
          DIRR=$(echo ' SCRIPT FILE:' $DIR_THRET_FOR_HEAD/script/main.py)
          DIRR_NUM_WORD=$(echo $DIRR | wc -L)
          DIR_FORMAT=$(seq -s ' ' $(expr 107 - $DIRR_NUM_WORD) | sed 's/[0-9]//g')
          echo "#!/usr/local/bin/python3" > $DIR_THRET_FOR_HEAD/script/main.py
          echo "" >> $DIR_THRET_FOR_HEAD/script/main.py
          echo $HASH >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'" SCRIPT FILE: $(basename "$DIRR")""$DIR_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$DATE""$DATE_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$HOUR""$HOUR_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$SYSTEM""$SYSTEM_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$SO""$SO_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$USER_FORMAT""$USER "'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo $HASH >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$SUMM""$SUMM_FORMAT"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo '#'"$SPACE"'#' >> $DIR_THRET_FOR_HEAD/script/main.py
          echo $HASH >> $DIR_THRET_FOR_HEAD/script/main.py
          echo "" >> $DIR_THRET_FOR_HEAD/script/main.py
          echo "# variables" >> $DIR_THRET_FOR_HEAD/script/main.py
          echo "" >> $DIR_THRET_FOR_HEAD/script/main.py

          sleep 1
          if ! [ -x $DIR_THRET_FOR_HEAD/script/main.py ]; then
               chmod -R 777 $DIR_THRET_FOR_HEAD/script/main.py
               sleep 1
          else
               echo "Execute of $DIR_THRET_FOR_HEAD/script/main.py permission denied"
          fi

          
          

     else
          echo "Something went wrong"
     fi

     


else
    echo "Something went wrong"
fi