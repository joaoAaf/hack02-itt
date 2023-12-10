resource "aws_instance" "hack02-itt" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  key_name               = "itt-keys"
  vpc_security_group_ids = ["sg-051e34146616a7798", "sg-0ab4589c664938387", "sg-01033e2f069124087"]
  tags = {
    Name = "hack02-itt"
  }
  provisioner "file" {
    source = "configs.sh"
    destination = "configs.sh"
  }
  provisioner "file" {
    source = "docker-compose.yml"
    destination = "docker-compose.yml"
  }
  provisioner "remote-exec" {
    inline = [ 
        "sudo chmod +x configs.sh",
        "sudo ./configs.sh",
        "sudo docker compose up -d",
    ]
  }
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = var.SSH_KEY
    host = self.public_ip
  }
}
output "hack02-itt" {
  value = aws_instance.hack02-itt.public_dns
}