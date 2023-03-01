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

    // Get the private IP address of the EC2 instance
    privateIP := terraform.Output(t, terraformOptions, "private_ip")

    // Verify that the private IP address is not empty
    assert.NotEmpty(t, privateIP)

    // Get the ID of the AMI used to launch the EC2 instance
    amiID := terraform.Output(t, terraformOptions, "ami_id")

    // Verify that the AMI ID is not empty
    assert.NotEmpty(t, amiID)

    // Verify that the AMI is accessible
    assert.NoError(t, awsDescribeImages(t, amiID))

}

func awsDescribeImages(t *testing.T, amiID string) error {
    // Use the AWS CLI to describe the specified AMI
    cmd := fmt.Sprintf("aws ec2 describe-images --image-ids %s", amiID)
    _, err := os.Exec(cmd)

    return err
}
