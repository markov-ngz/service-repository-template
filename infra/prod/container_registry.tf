# manually create the registry yourself : 
resource "aws_ecr_repository" "example" {
  name                 = var.ecr_registry_name
  image_tag_mutability = "MUTABLE"

  force_delete = true # registry will be deleted even if it is not empty ( all images will be lost )

  image_scanning_configuration {
    scan_on_push = false
  }
}