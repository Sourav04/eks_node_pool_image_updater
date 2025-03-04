eks_cluster_name  = "my-eks-cluster"
node_group_name   = "my-node-group"
eks_node_role_arn = "arn:aws:iam::123456789012:role/EKSNodeRole"
subnet_ids        = ["subnet-abc123", "subnet-def456"]

desired_size  = 3
min_size      = 2
max_size      = 5
max_unavailable = 1

ami_type       = "AL2_x86_64"
instance_types = ["t3.medium"]
disk_size      = 50
capacity_type  = "ON_DEMAND"
env            = "prod"
