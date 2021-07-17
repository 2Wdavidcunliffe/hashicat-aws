#policy "aws-restrict-all-but-ssh" {
#    enforcement_level = "hard-mandatory"
#}

mock "tfplan/v2" {
  module {
    source = "mock-data/mock-tfplan-v2.sentinel"
  }
}

module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}
