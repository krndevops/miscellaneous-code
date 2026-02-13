terraform {
  backend "s3" {
    bucket = "kdevops-terraform"
    key    = "misc-code/all/sonarqube/terraform.tfstate"
    region = "us-east-1"

  }

}