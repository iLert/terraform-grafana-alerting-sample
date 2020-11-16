# Using iLert terraform provider with grafana

This example is related to [our Terraform blog post](https://engineering.ilert.com/automating-monitoring-and-alerting-infrastructure-with-hashicorp-terraform/)

### Usage

```sh
# set your Grafana URL and credentials
export GRAFANA_URL=http://127.0.0.1:3000
export GRAFANA_AUTH=admin:admin
# set your iLert credentials via environment variables
export ILERT_ORGANIZATION=...
export ILERT_USERNAME=...
export ILERT_PASSWORD=...
# ... or create the `terraform.tfvars` file with variables
#
# organization=...
# username=...
# password=...
#

docker-compose up -d
terraform init
terraform apply \
    -var 'ilert_user_email=example@example.com' \
    -var 'ilert_user_username=example' \
    -var 'ilert_user_mobile_code=DE' \
    -var 'ilert_user_mobile_number=+491234567890'
```

### Links

- https://registry.terraform.io/providers/iLert/ilert/latest/docs
- https://registry.terraform.io/providers/grafana/grafana/latest/docs
