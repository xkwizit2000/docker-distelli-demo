provider "aws" {
  assume_role {
    role_arn  = "arn:aws:iam::280770932422:role/distelli-docker-demo"
  }
}
