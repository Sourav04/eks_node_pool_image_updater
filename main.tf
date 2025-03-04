resource "aws_eks_node_group" "eks_nodes" {
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  ami_type   = "AL2_x86_64" # Amazon Linux 2
  instance_types = ["t3.medium"]

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  update_config {
    max_unavailable = 1
  }

  launch_template {
    id      = aws_launch_template.eks_lt.id
    version = "$Latest"
  }

  tags = {
    Name = "eks-node-group"
  }
}
