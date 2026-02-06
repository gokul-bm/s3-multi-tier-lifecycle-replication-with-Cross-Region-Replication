provider "aws" {
  region = var.primary_region
}

provider "aws" {
  alias  = "replicated"
  region = var.replica_region
}