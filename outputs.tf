output "users" {
  value = "${join(",", aws_iam_user.user.*.id)}"
}
