resource "ovh_iam_resource_tags" "iam_resource_tags" {
  for_each = var.iam_resource_tags

  urn  = each.value.urn
  tags = each.value.tags
}

