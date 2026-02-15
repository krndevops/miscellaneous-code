variable "tool" {
  default = {
    sonarqube = {
      instance_type = "t3.large"
      port          = 9000
      priority      = 100
    }


    elasticsearch = {
      instance_type = "m6in.large"
      port          = 9200
      priority      = 101
    }

    prometheus = {
      instance_type = "t3.small"
      port          = 9090
      priority      = 102
    }

  }

}

