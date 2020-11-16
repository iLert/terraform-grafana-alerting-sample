resource "ilert_user" "this" {
  email      = var.ilert_user_email
  username   = var.ilert_user_username
  first_name = "test"
  last_name  = "test"

  subscribed_incident_update_states             = ["ACCEPTED", "ESCALATED", "RESOLVED"]
  subscribed_incident_update_notification_types = ["EMAIL"]

  mobile {
    region_code = var.ilert_user_mobile_code
    number      = var.ilert_user_mobile_number
  }

  high_priority_notification_preference {
    method = "EMAIL"
    delay  = 0
  }

  high_priority_notification_preference {
    method = "VOICE_MOBILE"
    delay  = 0
  }

  high_priority_notification_preference {
    method = "SMS"
    delay  = 5
  }

  low_priority_notification_preference {
    method = "EMAIL"
    delay  = 0
  }

  on_call_notification_preference {
    method     = "EMAIL"
    before_min = 60
  }
}

resource "ilert_escalation_policy" "grafana" {
  name = "Grafana Policy"

  escalation_rule {
    escalation_timeout = 0
    user               = ilert_user.this.id
  }
}

resource "ilert_alert_source" "grafana" {
  name                   = "Grafana Integration"
  integration_type       = "GRAFANA"
  escalation_policy      = ilert_escalation_policy.grafana.id
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
