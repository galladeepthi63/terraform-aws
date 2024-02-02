# resource "aws_s3_bucket" "example" {
#   bucket = "${var.bucketname}"
#   acl = "${var.acl_name}"

#   tags = {
#     Name        = "${var.bucketname}"
#     Environment = "${var.Environment}"
#   }
# }

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}