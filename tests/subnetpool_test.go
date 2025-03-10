package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformSubnetPoolName(t *testing.T) {
	uniqueId := random.UniqueId()
	name := fmt.Sprintf("subnetpool-test-%s", uniqueId)

	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../example/",
		Vars: map[string]interface{}{
			"name": name,
			"cidr": "172.16.77.0/24",
		},
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output := terraform.Output(t, terraformOptions, "subnetpool_name")
	assert.Equal(t, name, output)
}
