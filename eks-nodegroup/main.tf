module "eks_nodegroup" {
  source = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version = "20.8.5"
  name            = var.node_group_name
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids = var.subnet_ids
}
