resource "aws_security_group" "this" {
    name = "${var.environment}-sg"
    description = "Security group for ${var.environment} environment"
    vpc_id = var.vpc_id
    
    ingress {
        description = "SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTPS"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    /*Removed after adding nginx as a reverse proxy to Strapi. 
    Now only ports 80 and 443 are exposed to the public.*/
    
    # ingress {
    #     description = "Strapi"
    #     from_port = 1337
    #     to_port = 1337
    #     protocol = "tcp"
    #     cidr_blocks = ["0.0.0.0/0"]
    # }
    
    egress {
        description = "All traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "${var.environment}-sg"
        Environment = var.environment
    }
}