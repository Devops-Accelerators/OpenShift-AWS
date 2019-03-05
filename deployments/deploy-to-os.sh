#!bin/bash

echo "---------------------------------------- Starting operation ----------------------------------------"


echo "------------------------------------- Installing OpenShift CLI -------------------------------------"

wget https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
tar -xvf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
rm -r openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
mv openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit os-cli
export PATH=$PATH:$(pwd)/os-cli
source ~/.bashrc

echo "---------------------------------------- Installation Complete -------------------------------------"
echo "------------------------------- Enter Openshift Creds to Continue ----------------------------------"

oc login

echo "-------------------------------------- CREATING A NEW PROJECT --------------------------------------"

echo "Enter Project Name:"
read projectname
oc new-project $projectname

echo "----------------------------------------- Deploying an app -----------------------------------------"

echo "Enter GitHub Username: "
read user
echo "Enter Project Repo name: "
read repo
oc new-app https://github.com/$user/$repo

echo "----------------------------------------- Project Deployed -----------------------------------------"
