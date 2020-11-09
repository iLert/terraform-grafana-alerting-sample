resource "grafana_alert_notification" "ilert" {
  name       = "iLert"
  type       = "webhook"
  is_default = true

  settings = {
    url         = ilert_alert_source.grafana.integration_url
    httpMethod  = "POST"
    autoResolve = true
    uploadImage = true
  }
}
