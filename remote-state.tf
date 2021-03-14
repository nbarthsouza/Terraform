terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dnsoft"

    workspaces {
      name = "aws-dnsoft"
    }
  }
}