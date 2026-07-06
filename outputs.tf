output "automation_schedules" {
  description = "All automation_schedule resources"
  value       = azurerm_automation_schedule.automation_schedules
}
output "automation_schedules_automation_account_name" {
  description = "List of automation_account_name values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.automation_account_name]
}
output "automation_schedules_description" {
  description = "List of description values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.description]
}
output "automation_schedules_expiry_time" {
  description = "List of expiry_time values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.expiry_time]
}
output "automation_schedules_frequency" {
  description = "List of frequency values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.frequency]
}
output "automation_schedules_interval" {
  description = "List of interval values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.interval]
}
output "automation_schedules_month_days" {
  description = "List of month_days values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.month_days]
}
output "automation_schedules_monthly_occurrence" {
  description = "List of monthly_occurrence values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.monthly_occurrence]
}
output "automation_schedules_name" {
  description = "List of name values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.name]
}
output "automation_schedules_resource_group_name" {
  description = "List of resource_group_name values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.resource_group_name]
}
output "automation_schedules_start_time" {
  description = "List of start_time values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.start_time]
}
output "automation_schedules_timezone" {
  description = "List of timezone values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.timezone]
}
output "automation_schedules_week_days" {
  description = "List of week_days values across all automation_schedules"
  value       = [for k, v in azurerm_automation_schedule.automation_schedules : v.week_days]
}

