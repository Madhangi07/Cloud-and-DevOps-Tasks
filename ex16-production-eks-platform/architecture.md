# Production Platform Architecture

                Terraform

                     │

                     ▼

               Amazon VPC

                     │

                     ▼

              Amazon EKS Cluster

                     │

         ┌───────────┴───────────┐

         ▼                       ▼

 Worker Node 1            Worker Node 2

         │                       │

         └───────────┬───────────┘

                     ▼

             Kubernetes Cluster

                     │

        ┌────────────┼────────────┐

        ▼            ▼            ▼

   Dev Namespace  Prod Namespace Metrics Server

                                   │

                                   ▼

                        Cluster Autoscaler