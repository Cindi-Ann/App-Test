data "aws_ssm_parameter" "db_username" {
  name = var.db_username
}

data "aws_ssm_parameter" "db_password" {
  name = var.db_password
  with_decryption = true
}

resource "aws_db_subnet_group" "cindi_db_subnet_group" {
  name        = "cindi-test-db-subnet-group"
  subnet_ids  = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id]
  description = "Subnet group for the PostgreSQL RDS instance"
}

resource "aws_db_instance" "mc_db_instance" {
  identifier             = "cindi-testing-db"
  engine                 = "postgres"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.cindi_db_subnet_group.name
  multi_az               = false
  publicly_accessible    = true
  skip_final_snapshot    = true
}