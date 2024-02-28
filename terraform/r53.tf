resource "aws_route53_zone" "tc_com" {
  name = "toyokocuthbert.com"
}

resource "aws_route53domains_registered_domain" "domain_tc_com" {
  domain_name = "toyokocuthbert.com"

  name_server {
    name = aws_route53_zone.tc_com.name_servers[0]
  }

  name_server {
    name = aws_route53_zone.tc_com.name_servers[1]
  }

  name_server {
    name = aws_route53_zone.tc_com.name_servers[2]
  }

  name_server {
    name = aws_route53_zone.tc_com.name_servers[3]
  }

  admin_privacy      = true
  registrant_privacy = true
  tech_privacy       = true
}

resource "aws_route53_record" "tc_com" {
  zone_id = aws_route53_zone.tc_com.id
  name    = "toyokocuthbert.com"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.cf-distribution.domain_name
    zone_id                = aws_cloudfront_distribution.cf-distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www_tc_com" {
  zone_id = aws_route53_zone.tc_com.id
  name    = "www.toyokocuthbert.com"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.cf-distribution.domain_name
    zone_id                = aws_cloudfront_distribution.cf-distribution.hosted_zone_id
    evaluate_target_health = false
  }
}