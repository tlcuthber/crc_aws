resource "aws_s3_object" "error_html" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "error.html"
  source       = "../assets/error.html"
  content_type = "text/html"
  etag         = filemd5("../assets/error.html")
}

resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "index.html"
  source       = "../assets/index.html"
  content_type = "text/html"
  etag         = filemd5("../assets/index.html")
}

resource "aws_s3_object" "styles_css" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "css/styles.css"
  source       = "../assets/css/styles.css"
  content_type = "text/css"
  etag         = filemd5("../assets/css/styles.css")
}

resource "aws_s3_object" "visitorCounter_js" {
  bucket       = aws_s3_bucket.tc_com.id
  key          = "js/visitorCounter.js"
  source       = "../assets/js/visitorCounter.js"
  content_type = "text/javascript"
  etag         = filemd5("../assets/js/visitorCounter.js")
}

resource "aws_s3_object" "me_abstract2_jpg"{
    bucket = aws_s3_bucket.tc_com.id
    key = "img/me-abstract2.JPG"
    source = "../assets/img/me-abstract2.JPG"
    content_type = "image/jpeg"
    etag = filemd5("../assets/img/me-abstract2.JPG")
}

resource "aws_s3_object" "credly_logo_white_png"{
    bucket = aws_s3_bucket.tc_com.id
    key = "img/Credly_Logo_White_1-Inch.png"
    source = "../assets/img/Credly_Logo_White_1-Inch.png"
    content_type = "image/png"
    etag = filemd5("../assets/img/Credly_Logo_White_1-Inch.png")
}

resource "aws_s3_object" "github_mark_white_png"{
    bucket = aws_s3_bucket.tc_com.id
    key = "img/github-mark-white.png"
    source = "../assets/img/github-mark-white.png"
    content_type = "image/png"
    etag = filemd5("../assets/img/github-mark-white.png")
}

resource "aws_s3_object" "In_White_26_png"{
    bucket = aws_s3_bucket.tc_com.id
    key = "img/In-White-26.png"
    source = "../assets/img/In-White-26.png"
    content_type = "image/png"
    etag = filemd5("../assets/img/In-White-26.png")
}