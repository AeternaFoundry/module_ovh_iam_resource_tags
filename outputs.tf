output "iam_resource_tags_id" {
  description = "Map of id values across all iam_resource_tags, keyed the same as var.iam_resource_tags except keys with no id are omitted"
  value       = { for k, v in ovh_iam_resource_tags.iam_resource_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_resource_tags_tags" {
  description = "Map of tags values across all iam_resource_tags, keyed the same as var.iam_resource_tags except keys with no tags are omitted"
  value       = { for k, v in ovh_iam_resource_tags.iam_resource_tags : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iam_resource_tags_urn" {
  description = "Map of urn values across all iam_resource_tags, keyed the same as var.iam_resource_tags except keys with no urn are omitted"
  value       = { for k, v in ovh_iam_resource_tags.iam_resource_tags : k => v.urn if v.urn != null && length(v.urn) > 0 }
}

