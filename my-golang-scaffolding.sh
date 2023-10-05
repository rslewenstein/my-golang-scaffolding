#!/bin/bash

read -p "Type de project name: " projectName

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