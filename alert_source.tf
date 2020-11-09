data "ilert_escalation_policy" "default" {
  name = "Default"
}

resource "ilert_alert_source" "grafana" {
  name                   = "Grafana Integration"
  integration_type       = "GRAFANA"
  escalation_policy      = data.ilert_escalation_policy.default.id
  incident_priority_rule = "HIGH_DURING_SUPPORT_HOURS"

  support_hours {
    timezone = "Europe/Berlin"

    support_days {
      monday {
        start = "08:00"
        end   = "17:00"
      }

      tuesday {
        start = "08:00"
        end   = "17:00"
      }

      wednesday {
        start = "08:00"
        end   = "17:00"
      }

      thursday {
        start = "08:00"
        end   = "17:00"
      }

      friday {
        start = "08:00"
        end   = "17:00"
      }
    }
  }
}
