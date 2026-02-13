terraform {
  backend "s3" {
    bucket = "kdevops-terraform"
    key    = "misc/sonarqube/terraform.tfstate"
    region = "us-east-1"

  }

}