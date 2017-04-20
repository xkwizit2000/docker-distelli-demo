outputs.tf                                                                                          0000664 0000764 0000764 00000000121 13076111565 013001  0                                                                                                    ustar   ec2-user                        ec2-user                                                                                                                                                                                                               output "address" {
  value = "Instances: ${element(aws_instance.web.*.id, 0)}"
}
                                                                                                                                                                                                                                                                                                                                                                                                                                               README.md                                                                                           0000664 0000764 0000764 00000000611 13076111565 012206  0                                                                                                    ustar   ec2-user                        ec2-user                                                                                                                                                                                                               # Count Example

The count parameter on resources can simplify configurations
and let you scale resources by simply incrementing a number.

Additionally, variables can be used to expand a list of resources
for use elsewhere.

To run, configure your AWS provider as described in https://www.terraform.io/docs/providers/aws/index.html

Running the example

run `terraform apply` to see it work.
                                                                                                                       terraform.tfstate                                                                                   0000664 0000764 0000764 00000000474 13076120101 014315  0                                                                                                    ustar   ec2-user                        ec2-user                                                                                                                                                                                                               {
    "version": 3,
    "terraform_version": "0.9.3",
    "serial": 2,
    "lineage": "35e2d07f-85e9-4351-8b52-576b261e3b3e",
    "modules": [
        {
            "path": [
                "root"
            ],
            "outputs": {},
            "resources": {},
            "depends_on": []
        }
    ]
}
                                                                                                                                                                                                    terraform.tfstate.backup                                                                            0000664 0000764 0000764 00000032177 13076120002 015566  0                                                                                                    ustar   ec2-user                        ec2-user                                                                                                                                                                                                               {
    "version": 3,
    "terraform_version": "0.9.3",
    "serial": 1,
    "lineage": "35e2d07f-85e9-4351-8b52-576b261e3b3e",
    "modules": [
        {
            "path": [
                "root"
            ],
            "outputs": {
                "address": {
                    "sensitive": false,
                    "type": "string",
                    "value": "Instances: i-01f7e11c5342bb640"
                }
            },
            "resources": {
                "aws_elb.web": {
                    "type": "aws_elb",
                    "depends_on": [
                        "aws_instance.web.*"
                    ],
                    "primary": {
                        "id": "terraform-example-elb",
                        "attributes": {
                            "access_logs.#": "0",
                            "availability_zones.#": "1",
                            "availability_zones.221770259": "us-west-2b",
                            "connection_draining": "false",
                            "connection_draining_timeout": "300",
                            "cross_zone_load_balancing": "true",
                            "dns_name": "terraform-example-elb-313492809.us-west-2.elb.amazonaws.com",
                            "health_check.#": "1",
                            "health_check.0.healthy_threshold": "10",
                            "health_check.0.interval": "30",
                            "health_check.0.target": "TCP:80",
                            "health_check.0.timeout": "5",
                            "health_check.0.unhealthy_threshold": "2",
                            "id": "terraform-example-elb",
                            "idle_timeout": "60",
                            "instances.#": "4",
                            "instances.1394123567": "i-04becb1e66ce921cf",
                            "instances.3619678504": "i-08c674c7f8f745d2a",
                            "instances.3959963024": "i-0debcd14281099e75",
                            "instances.4087428724": "i-01f7e11c5342bb640",
                            "internal": "false",
                            "listener.#": "1",
                            "listener.3057123346.instance_port": "80",
                            "listener.3057123346.instance_protocol": "http",
                            "listener.3057123346.lb_port": "80",
                            "listener.3057123346.lb_protocol": "http",
                            "listener.3057123346.ssl_certificate_id": "",
                            "name": "terraform-example-elb",
                            "security_groups.#": "0",
                            "source_security_group": "amazon-elb/amazon-elb-sg",
                            "subnets.#": "0",
                            "tags.%": "0",
                            "zone_id": "Z1H1FL5HABSF5"
                        },
                        "meta": {},
                        "tainted": false
                    },
                    "deposed": [],
                    "provider": ""
                },
                "aws_instance.web.0": {
                    "type": "aws_instance",
                    "depends_on": [],
                    "primary": {
                        "id": "i-01f7e11c5342bb640",
                        "attributes": {
                            "ami": "ami-21f78e11",
                            "availability_zone": "us-west-2b",
                            "disable_api_termination": "false",
                            "ebs_block_device.#": "0",
                            "ebs_optimized": "false",
                            "ephemeral_block_device.#": "0",
                            "iam_instance_profile": "",
                            "id": "i-01f7e11c5342bb640",
                            "instance_state": "running",
                            "instance_type": "m1.small",
                            "ipv6_addresses.#": "0",
                            "key_name": "",
                            "monitoring": "false",
                            "network_interface_id": "",
                            "private_dns": "ip-10-232-10-95.us-west-2.compute.internal",
                            "private_ip": "10.232.10.95",
                            "public_dns": "ec2-54-188-69-7.us-west-2.compute.amazonaws.com",
                            "public_ip": "54.188.69.7",
                            "root_block_device.#": "1",
                            "root_block_device.0.delete_on_termination": "true",
                            "root_block_device.0.iops": "0",
                            "root_block_device.0.volume_size": "8",
                            "root_block_device.0.volume_type": "standard",
                            "security_groups.#": "1",
                            "security_groups.3814588639": "default",
                            "source_dest_check": "true",
                            "subnet_id": "",
                            "tags.%": "0",
                            "tenancy": "default",
                            "vpc_security_group_ids.#": "0"
                        },
                        "meta": {
                            "schema_version": "1"
                        },
                        "tainted": false
                    },
                    "deposed": [],
                    "provider": ""
                },
                "aws_instance.web.1": {
                    "type": "aws_instance",
                    "depends_on": [],
                    "primary": {
                        "id": "i-04becb1e66ce921cf",
                        "attributes": {
                            "ami": "ami-21f78e11",
                            "availability_zone": "us-west-2b",
                            "disable_api_termination": "false",
                            "ebs_block_device.#": "0",
                            "ebs_optimized": "false",
                            "ephemeral_block_device.#": "0",
                            "iam_instance_profile": "",
                            "id": "i-04becb1e66ce921cf",
                            "instance_state": "running",
                            "instance_type": "m1.small",
                            "ipv6_addresses.#": "0",
                            "key_name": "",
                            "monitoring": "false",
                            "network_interface_id": "",
                            "private_dns": "ip-10-232-9-134.us-west-2.compute.internal",
                            "private_ip": "10.232.9.134",
                            "public_dns": "ec2-54-214-189-118.us-west-2.compute.amazonaws.com",
                            "public_ip": "54.214.189.118",
                            "root_block_device.#": "1",
                            "root_block_device.0.delete_on_termination": "true",
                            "root_block_device.0.iops": "0",
                            "root_block_device.0.volume_size": "8",
                            "root_block_device.0.volume_type": "standard",
                            "security_groups.#": "1",
                            "security_groups.3814588639": "default",
                            "source_dest_check": "true",
                            "subnet_id": "",
                            "tags.%": "0",
                            "tenancy": "default",
                            "vpc_security_group_ids.#": "0"
                        },
                        "meta": {
                            "schema_version": "1"
                        },
                        "tainted": false
                    },
                    "deposed": [],
                    "provider": ""
                },
                "aws_instance.web.2": {
                    "type": "aws_instance",
                    "depends_on": [],
                    "primary": {
                        "id": "i-0debcd14281099e75",
                        "attributes": {
                            "ami": "ami-21f78e11",
                            "availability_zone": "us-west-2b",
                            "disable_api_termination": "false",
                            "ebs_block_device.#": "0",
                            "ebs_optimized": "false",
                            "ephemeral_block_device.#": "0",
                            "iam_instance_profile": "",
                            "id": "i-0debcd14281099e75",
                            "instance_state": "running",
                            "instance_type": "m1.small",
                            "ipv6_addresses.#": "0",
                            "key_name": "",
                            "monitoring": "false",
                            "network_interface_id": "",
                            "private_dns": "ip-10-254-74-98.us-west-2.compute.internal",
                            "private_ip": "10.254.74.98",
                            "public_dns": "ec2-54-184-94-245.us-west-2.compute.amazonaws.com",
                            "public_ip": "54.184.94.245",
                            "root_block_device.#": "1",
                            "root_block_device.0.delete_on_termination": "true",
                            "root_block_device.0.iops": "0",
                            "root_block_device.0.volume_size": "8",
                            "root_block_device.0.volume_type": "standard",
                            "security_groups.#": "1",
                            "security_groups.3814588639": "default",
                            "source_dest_check": "true",
                            "subnet_id": "",
                            "tags.%": "0",
                            "tenancy": "default",
                            "vpc_security_group_ids.#": "0"
                        },
                        "meta": {
                            "schema_version": "1"
                        },
                        "tainted": false
                    },
                    "deposed": [],
                    "provider": ""
                },
                "aws_instance.web.3": {
                    "type": "aws_instance",
                    "depends_on": [],
                    "primary": {
                        "id": "i-08c674c7f8f745d2a",
                        "attributes": {
                            "ami": "ami-21f78e11",
                            "availability_zone": "us-west-2b",
                            "disable_api_termination": "false",
                            "ebs_block_device.#": "0",
                            "ebs_optimized": "false",
                            "ephemeral_block_device.#": "0",
                            "iam_instance_profile": "",
                            "id": "i-08c674c7f8f745d2a",
                            "instance_state": "running",
                            "instance_type": "m1.small",
                            "ipv6_addresses.#": "0",
                            "key_name": "",
                            "monitoring": "false",
                            "network_interface_id": "",
                            "private_dns": "ip-10-232-56-133.us-west-2.compute.internal",
                            "private_ip": "10.232.56.133",
                            "public_dns": "ec2-54-188-72-93.us-west-2.compute.amazonaws.com",
                            "public_ip": "54.188.72.93",
                            "root_block_device.#": "1",
                            "root_block_device.0.delete_on_termination": "true",
                            "root_block_device.0.iops": "0",
                            "root_block_device.0.volume_size": "8",
                            "root_block_device.0.volume_type": "standard",
                            "security_groups.#": "1",
                            "security_groups.3814588639": "default",
                            "source_dest_check": "true",
                            "subnet_id": "",
                            "tags.%": "0",
                            "tenancy": "default",
                            "vpc_security_group_ids.#": "0"
                        },
                        "meta": {
                            "schema_version": "1"
                        },
                        "tainted": false
                    },
                    "deposed": [],
                    "provider": ""
                },
                "data.terraform_remote_state.demo": {
                    "type": "terraform_remote_state",
                    "depends_on": [],
                    "primary": {
                        "id": "2017-04-20 11:45:18.379473656 +0000 UTC",
                        "attributes": {
                            "backend": "s3",
                            "config.%": "3",
                            "config.bucket": "terraform-remote-state.thorntontechnical.ninja",
                            "config.key": "terraform.tfstate",
                            "config.region": "us-east-1",
                            "environment": "default",
                            "id": "2017-04-20 11:45:18.379473656 +0000 UTC"
                        },
                        "meta": {},
                        "tainted": false
                    },
                    "deposed": [],
                    "provider": ""
                }
            },
            "depends_on": []
        }
    ]
}
                                                                                                                                                                                                                                                                                                                                                                                                 variables.tf                                                                                        0000664 0000764 0000764 00000000474 13076115556 013245  0                                                                                                    ustar   ec2-user                        ec2-user                                                                                                                                                                                                               variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    "eu-west-1" = "ami-b1cf19c6"
    "us-east-1" = "ami-de7ab6b6"
    "us-west-1" = "ami-3f75767a"
    "us-west-2" = "ami-21f78e11"
  }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    