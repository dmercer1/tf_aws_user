resource "aws_iam_user" "user" {
  name = "${element(split(",", var.users), count.index)}"
  count = "${length(compact(split(",", var.users)))}"
}
