/* template files for registry and ecs role policies */
resource "template_file" "registry_policy" {
  template = "${file("policies/registry.json")}"

  vars {
    s3_bucket_name = "${var.s3_bucket_name}"
  }
}

resource "template_file" "ecs_service_role_policy" {
  template = "${file("policies/ecs-service-role-policy.json")}"

  vars {
    s3_bucket_name = "${var.s3_bucket_name}"
  }
}

resource "template_file" "registry_task" {
  template = "${file("task-definitions/registry.json")}"

  vars {
    s3_bucket_name        = "${aws_s3_bucket.registry.id}"
    s3_bucket_region      = "${aws_s3_bucket.registry.region}"
    registry_docker_image = "${var.registry_docker_image}"
  }
}
