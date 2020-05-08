#defining our variables 
variable "whitelist" {
  type = list(string)
}                 
variable "prod_image_id" {
  type = string
}                
variable "prod_instance_type" {
  type = string
}      
variable "prod_desired_capacity" {
  type = number
}   
variable "prod_max_size" {
  type = number
}            
variable "prod_min_size" {
  type = number
} 
variable "prod_access_key" {
  type = string
} 
variable "prod_secret_key" {
  type = string
} 



