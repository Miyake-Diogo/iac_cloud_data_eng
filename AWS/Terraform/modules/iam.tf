resource "aws_iam_group" "grupo" {
  name = "analistas"
}

resource "aws_iam_group_policy" "ec2-policy" {
  name   = "ec2-policy"
  group  = aws_iam_group.grupo.id
  policy = file("./files/policy-ec2.json")
}

resource "aws_iam_user_group_membership" "add-membro" {
  user   = "cyborg"
  groups = [aws_iam_group.grupo.name]
}

resource "aws_iam_account_password_policy" "politica-senha" {
  minimum_password_length   = 10
  require_symbols           = true
  password_reuse_prevention = 5
  require_numbers           = true
}