output "organizations_tags_id" {
  description = "Map of id values across all organizations_tags, keyed the same as var.organizations_tags"
  value       = { for k, v in aws_organizations_tag.organizations_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_tags_key" {
  description = "Map of key values across all organizations_tags, keyed the same as var.organizations_tags"
  value       = { for k, v in aws_organizations_tag.organizations_tags : k => v.key if v.key != null && length(v.key) > 0 }
}
output "organizations_tags_resource_id" {
  description = "Map of resource_id values across all organizations_tags, keyed the same as var.organizations_tags"
  value       = { for k, v in aws_organizations_tag.organizations_tags : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "organizations_tags_value" {
  description = "Map of value values across all organizations_tags, keyed the same as var.organizations_tags"
  value       = { for k, v in aws_organizations_tag.organizations_tags : k => v.value if v.value != null && length(v.value) > 0 }
}

