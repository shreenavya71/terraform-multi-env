variable "instance_names" {
    type = map
    # default = {            # map
    #     db = "t3.small"         # key value pairs
    #     backend = "t2.micro"
    #     frontend = "t2.micro"
    # } 
}
variable "environment" {
    # default = "dev"
}
variable "common_tags" {
    type = map
    default = {            # map
        project = "Expense"
        terraform = "true"
    
    }
}

variable "domain_name" {
    default = "devopsnavyahome.online"
}

variable "zone_id" {
    default = "Z03429092AAIYV87MIX0H"
}