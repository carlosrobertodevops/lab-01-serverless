output "deployment_bucket_name" {
  value = aws_s3_bucket.serverless_deployment_bucket.bucket
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "alb_arn" {
  value = aws_lb.app.arn
}

output "alb_dns_name" {
  value = aws_lb.app.dns_name
}

output "http_listener_arn" {
  value = aws_lb_listener.http.arn
}
