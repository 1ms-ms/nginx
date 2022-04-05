variable "instance_count" {
  default = "3"
}

variable "instance_tags" {
  default = ["EC-1","EC-2","Prom_Grafana"]
}

variable "instance_functions" {
  default = ["EC","EC","Monitoring"]
}
variable "sub_tags"{
  default = ["SUB-1"]
}

variable "VPC"{
  type = string
  default = "10.0.0.0/16"
}