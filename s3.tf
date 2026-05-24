resource "aws_s3_bucket" "terraform_bucket" {
  bucket = poc-25-terraform-bucket-680
 
  tags = {
    Name = "terraform-demo-bucket"
  }
}