variable amis {
    type = map

    default = {
        us-east-1 = "ami-0885b1f6bd170450c"
        us-east-2 = "ami-0a91cd140a1fc148a"
    }  
}

variable "cdirs_acesso_remoto" {
    type = list
    default = [
        "165.225.223.72/32", 
        "167.225.223.72/32"
    ]
}

variable "key_name" {
    default = "terraform-aws"
}