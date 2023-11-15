package test

import (
	"regexp"
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
    "encoding/json"
)

func TestModule(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "./unit-test", NoColor: true,
	})


	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)

	secGroupId := terraform.Output(t, terraformOptions, "securtiy-group-id")
	keyPair := terraform.Output(t, terraformOptions, "key-pair")
	iamPolicy := terraform.Output(t, terraformOptions, "iam-policy")
	amiName := terraform.Output(t, terraformOptions, "ami-name")
	kmsKey := terraform.Output(t, terraformOptions, "kms-key")
    subnetID := terraform.Output(t, terraformOptions, "subnet-arn")
    instance1BackupTagInput := terraform.Output(t, terraformOptions, "backup-instance-1-tag-input")
    instance2BackupTagInput := terraform.Output(t, terraformOptions, "backup-instance-2-tag-input")
    ebsVolumeInstance1BackupTagInput := terraform.Output(t, terraformOptions, "backup-instance-1-ebs-volume-tag-input")
    ebsVolumeInstance2BackupTagInput := terraform.Output(t, terraformOptions, "backup-instance-2-ebs-volume-tag-input")
    appliedInstanceBackupTag := terraform.OutputList(t, terraformOptions, "applied-instance-backup-tag")
    appliedBackupRootInlineTag := terraform.OutputList(t, terraformOptions, "applied-backup-root-inline-tag")
	var appliedBackupEbsTag [][]string
    ebsError := json.Unmarshal([]byte(terraform.OutputJson(t, terraformOptions, "applied-backup-ebs-tag")), &appliedBackupEbsTag)
    if ebsError != nil {
    	t.Error("Error:", ebsError)
    }
    t.Logf("Log: EBS backup tag of the instance-1: %+v", appliedBackupEbsTag[0][0])
    t.Logf("Log: EBS backup tag of the instance-2: %+v", appliedBackupEbsTag[1][0])

	assert.NotEmpty(t, secGroupId)
    assert.Regexp(t, regexp.MustCompile(`^arn:aws:ec2:eu-west-2:836052629367:key-pair/:*`), keyPair)
    assert.Regexp(t, regexp.MustCompile(`^arn:aws:iam:*`), iamPolicy)
    assert.Regexp(t, regexp.MustCompile(`^RHEL-7.9_HVM-*`), amiName)
    assert.Regexp(t, regexp.MustCompile(`^arn:aws:iam::836052629367:policy/*`), kmsKey)
    assert.Regexp(t, regexp.MustCompile(`^arn:aws:ec2:eu-west-2*`), subnetID)
    assert.Equal(t, instance1BackupTagInput, appliedInstanceBackupTag[0])
    assert.Equal(t, instance2BackupTagInput, appliedInstanceBackupTag[1])
    assert.Equal(t, ebsVolumeInstance1BackupTagInput, appliedBackupRootInlineTag[0])
    assert.Equal(t, ebsVolumeInstance2BackupTagInput, appliedBackupRootInlineTag[1])
    assert.Equal(t, ebsVolumeInstance1BackupTagInput, appliedBackupEbsTag[0][0])
    assert.Equal(t, ebsVolumeInstance2BackupTagInput, appliedBackupEbsTag[1][0])
}