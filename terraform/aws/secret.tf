# resource "aws_secretsmanager_secret" "elasticache_dev_secret" {
#   name = var.project
# }

# resource "aws_secretsmanager_secret" "elasticache_stage_secret" {
#   name = var.project
# }

# resource "aws_secretsmanager_secret" "elasticache_prod_secret" {
#   name = var.project
# }

# data "aws_secretsmanager_random_password" "elasticache_dev" { 
#     password_length = 20 
#     exclude_numbers = false 
#     exclude_punctuation = true 
#     include_space = false 
# }

# data "aws_secretsmanager_random_password" "elasticache_stage" { 
#     password_length = 20 
#     exclude_numbers = false 
#     exclude_punctuation = true 
#     include_space = false 
# }

# data "aws_secretsmanager_random_password" "elasticache_prod" { 
#     password_length = 20 
#     exclude_numbers = false 
#     exclude_punctuation = true 
#     include_space = false 
# }

# resource "aws_secretsmanager_secret_rotation" "createrotation" {
#   count               = var.needrotation == true ? 1 : 0
#   secret_id           = aws_secretsmanager_secret.initiatesecret.id
#   rotation_lambda_arn = aws_lambda_function.rotationlambda.arn

#   rotation_rules {
#     automatically_after_days = 1
#   }
# }