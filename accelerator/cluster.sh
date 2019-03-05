#!/bin/bash
REGION="eu-central-1"

SNAME="openshift-cluster"

TEMPURL="https://aws-quickstart.s3.amazonaws.com/quickstart-redhat-openshift/tem                                                                             plates/openshift-master.template"

SSHKEY="devops-frank-vss"

REDIP=$(curl ifconfig.me)"/30"

aws cloudformation create-stack --region $REGION  \
 --stack-name $SNAME  \
 --template-url $TEMPURL  \
 --parameters  \
  ParameterKey=AvailabilityZones,ParameterValue=eu-central-1a\\,eu-central-1b\\,                                                                             eu-central-1c  \
  ParameterKey=RemoteAccessCIDR,ParameterValue=$REDIP  \
  ParameterKey=ContainerAccessCIDR,ParameterValue=$REDIP  \
  ParameterKey=KeyPairName,ParameterValue=$SSHKEY  \
  ParameterKey=OpenShiftAdminPassword,ParameterValue=$RPASS  \
  ParameterKey=RedhatSubscriptionUserName,ParameterValue=$RUID  \
  ParameterKey=RedhatSubscriptionPassword,ParameterValue=$RPASS  \
  ParameterKey=RedhatSubscriptionPoolID,ParameterValue=$RPOOL  \
