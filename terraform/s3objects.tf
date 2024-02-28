resource "aws_s3_object" "error-html" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "error.html"
  source       = "../assets/error.html"
  content_type = "text/html"
  etag         = filemd5("../assets/error.html")
}

resource "aws_s3_object" "index-html" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "index.html"
  source       = "../assets/index.html"
  content_type = "text/html"
  etag         = filemd5("../assets/index.html")
}

resource "aws_s3_object" "styles-css" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "css/styles.css"
  source       = "../assets/css/styles.css"
  content_type = "text/css"
  etag         = filemd5("../assets/css/styles.css")
}

resource "aws_s3_object" "visitorCounter-js" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "js/visitorCounter.js"
  source       = "../assets/js/visitorCounter.js"
  content_type = "text/javascript"
  etag         = filemd5("../assets/js/visitorCounter.js")
}

# resource "aws_s3_object" "me-abstract1-jpg"{
#     bucket = aws_s3_bucket.tc_com.id
#     key = "img/me-abstract1.JPG"
#     source = "../assets/img/me-abstract1.JPG"
#     content_type = "image/jpeg"
#     etag = filemd5("../assets/img/me-abstract1.JPG")
# }