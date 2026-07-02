module "eks" {

  source = "terraform-aws-modules/eks/aws"

  version = "~> 21.0"

  name = var.cluster_name

  kubernetes_version = "1.33"

  eks_managed_node_groups = {

    default = {

      instance_types = ["t3.medium"]

      desired_size = 2

      min_size = 2

      max_size = 6

    }

  }

}