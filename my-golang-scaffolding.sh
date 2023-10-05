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

cd ..

mkdir cmd
cd cmd
touch main.go
touch main_test.go
touch handlers.go
cd ..