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
  # --- Unconfirmed validation candidates, derived from azurerm_automation_schedule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.ScheduleName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: automation_account_name
  #   source:    validate.AutomationAccount: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: frequency
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: interval
  #   condition: value >= 1 && value <= 100
  #   message:   must be between 1 and 100
  # path: start_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: expiry_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: timezone
  #   source:    azvalidate.AzureTimeZoneString: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: week_days[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: month_days[*]
  #   source:    validation.All(...) - no translation rule yet, add one
  # path: monthly_occurrence.day
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: monthly_occurrence.occurrence
  #   source:    validation.All(...) - no translation rule yet, add one
}

