output "automation_schedules_id" {
  description = "Map of id values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_schedules_automation_account_name" {
  description = "Map of automation_account_name values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.automation_account_name if v.automation_account_name != null && length(v.automation_account_name) > 0 }
}
output "automation_schedules_description" {
  description = "Map of description values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "automation_schedules_expiry_time" {
  description = "Map of expiry_time values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.expiry_time if v.expiry_time != null && length(v.expiry_time) > 0 }
}
output "automation_schedules_frequency" {
  description = "Map of frequency values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "automation_schedules_interval" {
  description = "Map of interval values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.interval if v.interval != null }
}
output "automation_schedules_month_days" {
  description = "Map of month_days values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.month_days if v.month_days != null && length(v.month_days) > 0 }
}
output "automation_schedules_monthly_occurrence" {
  description = "Map of monthly_occurrence values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.monthly_occurrence if v.monthly_occurrence != null && length(v.monthly_occurrence) > 0 }
}
output "automation_schedules_name" {
  description = "Map of name values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automation_schedules_resource_group_name" {
  description = "Map of resource_group_name values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "automation_schedules_start_time" {
  description = "Map of start_time values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "automation_schedules_timezone" {
  description = "Map of timezone values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}
output "automation_schedules_week_days" {
  description = "Map of week_days values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.week_days if v.week_days != null && length(v.week_days) > 0 }
}

