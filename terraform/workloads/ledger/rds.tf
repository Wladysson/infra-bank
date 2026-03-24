resource "aws_db_instance" "ledger" {
  identifier              = "ledger-${var.environment}"
  engine                  = "postgres"
  engine_version          = "15"
  instance_class          = var.db_instance_class
  allocated_storage       = 20
  db_name                 = "ledger_db"
  username                = "ledger_admin"
  password                = "change_me_secure"
  skip_final_snapshot     = true
  publicly_accessible     = false
  vpc_security_group_ids  = []
  db_subnet_group_name    = aws_db_subnet_group.ledger.name

  tags = local.tags
}

resource "aws_db_subnet_group" "ledger" {
  name       = "contas-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = local.tags
}