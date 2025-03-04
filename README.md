This will pick the latest AMI using data block and will update the node pool with latest AMI
Use PDB to define the pod disruption budget such that critical workloads are not affected due to upgrade.

Will create another approach in a different repo where i am planning to do below:

1. Eventbridge rule to check if there is a new image and trigger lambda function
2. Lambda function will call a github workflow with latest AMI
3. The github workflow will execute the terraform code for image upgrade using latest AMI
