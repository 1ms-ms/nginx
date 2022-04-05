resource "aws_instance" "myec2" {
   count = 3
   ami = "ami-0069d66985b09d219"
   instance_type = "t2.micro"
   key_name = "ansible"
   subnet_id = aws_subnet.private_subnet.id
   vpc_security_group_ids = [aws_security_group.sg.id, ]
   tags = {
     Name = element(var.instance_tags, count.index)
     Function = element(var.instance_functions, count.index)
   }
}

resource "aws_instance" "myec2_mysql" {
   count = 1
   ami = "ami-0069d66985b09d219"
   instance_type = "t2.micro"
   key_name = "ansible"
   subnet_id = aws_subnet.private_subnet.id
   vpc_security_group_ids = [aws_security_group.sg_mysql.id, ]
   tags = {
     Name = "MYSQL"
     Function = "Database"
   }
}

resource "aws_instance" "myec2_nginx" {
   count = 1
   ami = "ami-0069d66985b09d219"
   instance_type = "t2.micro"
   key_name = "ansible"
   subnet_id = aws_subnet.public_subnet.id
   vpc_security_group_ids = [aws_security_group.sg.id, ]
   tags = {
     Name = "Nginx"
     Function = "Nginx"
   }
}