resource "aws_s3_bucket" "s3bucket" {
    bucket = var.bucket
}

resource "aws_s3_object" "this" {
    bucket = aws_s3_bucket.s3bucket.bucket
    etag = filemd5("${path.module}/${var.key}")
    key = var.key
    source = "${path.module}/${var.key}"
}
