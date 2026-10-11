variable "iam_resource_tags" {
  description = <<EOT
Map of iam_resource_tags, attributes below
Required:
    - urn
Optional:
    - tags
EOT

  type = map(object({
    urn  = string
    tags = optional(map(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

