module "vpc" {
# source = "git::https://github.com/chethan2010/terraform-vpc.git?ref=main"
source = "../../Terraform/Terraform/variables.tf"
    project_name = var.Project_Name
    common_tags = var.Common_tagss
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = var.is_perring
}

