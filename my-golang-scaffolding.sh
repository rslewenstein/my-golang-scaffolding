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


mkdir cmd