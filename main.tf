resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.main.id

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-${var.sg_name}"
    }

  )
  
}
