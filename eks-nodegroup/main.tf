module "eks_nodegroup" {
  source = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version = "20.8.5"
  node_group_name = var.node_group_name
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids = var.subnet_ids
  min_size     = var.min_size
  max_size     = var.max_size
  desired_size = var.desired_size
  instance_types = var.instance_types
  capacity_type  = var.capacity_type
}
