# OpenShift On AWS
This guide helps you to set up a Red Hat OpenShift Container Platform on AWS. The Quick Start includes AWS CloudFormation templates that build the AWS infrastructure, and then pass that environment to Ansible playbooks to build out the OpenShift environment. The deployment provisions OpenShift master instances, etcd instances, and node instances in a highly available configuration. 
# Prerequisites
- Must have [aws-cli](https://docs.aws.amazon.com/cli/latest/userguide/install-linux.html#install-linux-path) installed in system.
- The quickstart requires a RedHat Subscription. 
- Sensitive data (secrets, passwords) must be injected as environment variables in the system.<br />(In this case the red hat credentials should be added as environment variables).
  ```
   Ex: " export PASSWORD=<your-password> >> ~/.bashrc " (or ~/.bash_profile [osx users])
  ```
 # Creating Stack on Cloudformation
 To start the stack creation process run the script "cluster.sh" in the directory accelerator.
  
