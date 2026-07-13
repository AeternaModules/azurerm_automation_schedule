variable "automation_schedules" {
  description = <<EOT
Map of automation_schedules, attributes below
Required:
    - automation_account_name
    - frequency
    - name
    - resource_group_name
Optional:
    - description
    - expiry_time
    - interval
    - month_days
    - start_time
    - timezone
    - week_days
    - monthly_occurrence (block):
        - day (required)
        - occurrence (required)
EOT

  type = map(object({
    automation_account_name = string
    frequency               = string
    name                    = string
    resource_group_name     = string
    description             = optional(string)
    expiry_time             = optional(string)
    interval                = optional(number)
    month_days              = optional(set(number))
    start_time              = optional(string)
    timezone                = optional(string)
    week_days               = optional(set(string))
    monthly_occurrence = optional(object({
      day        = string
      occurrence = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_schedules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_schedules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_schedules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_schedules : (
        v.interval == null || (v.interval >= 1 && v.interval <= 100)
      )
    ])
    error_message = "must be between 1 and 100"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

