#!/bin/bash

cat << EOT 

/*************************************/
/* My Golang Scaffolding             */
/* Version: 0.0.1                    */
/*                                   */
/* Author: Rafael S. Lewenstein      */
/* https://github.com/rslewenstein   */
/*************************************/

EOT

read -p "Type the project name: " projectName

if [ "$projectName" = "" ]; 
then
    echo -e "\033[1;91mEnter a valid name\033"
    exit 0
fi

mkdir $projectName
cd $projectName

touch README.md
echo "# $projectName" >> README.md

touch .gitignore
cat > '.gitignore' << EOT
go.mod
go.sum
.vscode
my-golang-scaffolding.sh
EOT

mkdir $projectName
cd $projectName
touch service.go
cat > 'service.go' << EOT

package $projectName

func main(){

}

EOT

touch service_test.go
cat > 'service_test.go' << EOT

package $projectName

import(
    "string"
    "testing"
)

func Test_main(){

}

EOT

touch model.go
cat > 'model.go' << EOT

package $projectName

type RENAME_HERE struct{

}

EOT

cd ..

mkdir cmd
cd cmd
touch main.go
cat > 'main.go' << EOT

package cmd

func main(){

}

EOT

touch main_test.go
cat > 'main_test.go' << EOT

package cmd

import(
    "string"
    "testing"
)

func Test_main(){

}

EOT

touch handlers.go
cat > 'handlers.go' << EOT

package cmd

func RENAME_HERE(){

}

EOT

cd ..

go mod init
go mod tidy

echo -e "\033[1;32mProject created!\033"