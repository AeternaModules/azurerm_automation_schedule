output "automation_schedules_id" {
  description = "Map of id values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.id }
}
output "automation_schedules_automation_account_name" {
  description = "Map of automation_account_name values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.automation_account_name }
}
output "automation_schedules_description" {
  description = "Map of description values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.description }
}
output "automation_schedules_expiry_time" {
  description = "Map of expiry_time values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.expiry_time }
}
output "automation_schedules_frequency" {
  description = "Map of frequency values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.frequency }
}
output "automation_schedules_interval" {
  description = "Map of interval values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.interval }
}
output "automation_schedules_month_days" {
  description = "Map of month_days values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.month_days }
}
output "automation_schedules_monthly_occurrence" {
  description = "Map of monthly_occurrence values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.monthly_occurrence }
}
output "automation_schedules_name" {
  description = "Map of name values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.name }
}
output "automation_schedules_resource_group_name" {
  description = "Map of resource_group_name values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.resource_group_name }
}
output "automation_schedules_start_time" {
  description = "Map of start_time values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.start_time }
}
output "automation_schedules_timezone" {
  description = "Map of timezone values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.timezone }
}
output "automation_schedules_week_days" {
  description = "Map of week_days values across all automation_schedules, keyed the same as var.automation_schedules"
  value       = { for k, v in azurerm_automation_schedule.automation_schedules : k => v.week_days }
}

