variable "aws_region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type."
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "The name of the EC2 key pair to use for SSH access."
  type        = string
  default     = "webhost"
}

variable "public_key" {
  description = "The public key for SSH access"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDexH4YI1wL98pnpnQ4d1bYZk3AgTAguaHSMSwQb1yIzdDTYizTirDoCxfSwqn2gEBfPhq/b+Xq0oMxD5CgyVPEeLt6NCyfHdxe5jhjNuMp7PI5yqwBsY5XVHVYfDUDqpaAUgbpTwKEdXR2ml/FloQHEh8Gnhds1HYpE+oUOt+b4ELoTv0q8VUJqtwsTL5lFZoOIc/ITvZUb8UKJoIjK4RQKUsKH/IbOEaRIZvV7m1psNyrfcmVy+noPE0+gT4+HynHU/DxsGjEF9GpT8AyioQod29cjdRkfUv1uSI+H1hThjzKVjA/PSFG/SRybSEaxWaUG+xH39Z6t/0VWQG6OeFLAce2LMzk3L8q945L/4K6E0rOW+eo8IDqKixg/107H9CxP5IDYw6rfLs5ERu1sZZUDCBWw3eNLcWsfJRHb6AtdK2gbUbAxTiCkKlT03+9lUXPAOJzh/IThCvwUQJQx222MkHD+yeTaz4lRcaYumlu+uhKOMwf+9ti9XFwm7q3vln7zSDcEXLw3QDX1o90w4fe1g1pUMNNzCTM8SNFJZJNNDoPHeQb/jNstfEEMUGtmi1s5XV+DTzPpvmFPlv5BAnFVDGRHss2LM2ZWRIu1CyLFj6o0hjWEp2tVLU+Sj5CKqfOdPEqEQnwi5CSpcBuMsoZDA3lZsJgB0HmIDfvL/KIiQ== kingczin@DESKTOP-4GKA3RL"
}

variable "root_volume_size" {
  description = "The size of the root volume in gigabytes"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "The type of the root volume"
  type        = string
  default     = "gp3"
}

