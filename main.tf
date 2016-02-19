resource "aws_route53_record" "entry" {
  zone_id "${var.zone_id}"
  name = "${element(split(",", var.names), count.index)}"
  records = "${var.records}"
  type = "${var.type}"
  ttl = "300"
  count = "${length(compact(split(",", var.records)))}"
}
