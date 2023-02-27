package test

import (
    "testing"

    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestTerraformEC2Instance(t *testing.T) {
    terraformOptions := &terraform.Options{
        // Set the path to the Terraform code directory
        TerraformDir: "./unit-test",

        // Variables to pass to the Terraform code
//         Vars: map[string]interface{}{
//             "instance_type": "t2.micro",
//         },
    }

    // Run `terraform init` and `terraform apply` with the options defined above
    terraform.InitAndApply(t, terraformOptions)

    // Get the public IP address of the EC2 instance
    publicIP := terraform.Output(t, terraformOptions, "public_ip")

    // Verify that the public IP address is not empty
    assert.NotEmpty(t, publicIP)

}

