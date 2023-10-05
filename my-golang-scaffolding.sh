#!/bin/bash

read -p "Type de project name: " projectName

mkdir $projectName
cd $projectName

touch README.md
echo "# $projectName" >> README.md

mkdir $projectName


mkdir cmd