
provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_instance.web
  id = "i-0ada80c75fb6569f8"
}