data "ilert_escalation_policy" "default" {
  name = "Default"
}

resource "ilert_alert_source" "grafana" {
  name              = "Grafana Integration"
  integration_type  = "GRAFANA"
  escalation_policy = data.ilert_escalation_policy.default.id
}
