variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "node_group_name" {
  description = "EKS Node Group Name"
  type        = string
}

variable "eks_node_role_arn" {
  description = "IAM Role for Node Group"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "max_unavailable" {
  description = "Number of nodes that can be unavailable during update"
  type        = number
  default     = 1
}

variable "ami_type" {
  description = "AMI type for the nodes"
  type        = string
  default     = "AL2_x86_64"
}

variable "instance_types" {
  description = "Instance types for the nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "disk_size" {
  description = "Disk size for the worker nodes"
  type        = number
  default     = 20
}

variable "capacity_type" {
  description = "Capacity type (ON_DEMAND or SPOT)"
  type        = string
  default     = "ON_DEMAND"
}

variable "env" {
  description = "Environment (dev/staging/prod)"
  type        = string
}
