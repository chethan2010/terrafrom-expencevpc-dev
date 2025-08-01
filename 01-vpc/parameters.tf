resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.Project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}
resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.Project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value =join("," ,module.vpc.public_subnet_cidrs)
  
  
  # converting list to string list
} 
# join("," ,module.vpc.public_subnet_ids) 
# #["id1","id2"] terraform format
# # id1, id2 -> AWS SSM format
resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.Project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join(",",module.vpc.private_subnet_cidrs) # converting list to string list
}

resource "aws_ssm_parameter" "db_subnet_group_name" {
  name  = "/${var.Project_name}/${var.environment}/db_subnet_group_name"
  type  = "String"
  value = module.vpc.database_subnet_group_name
} 