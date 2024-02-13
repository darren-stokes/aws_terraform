aws_region = {
    # Dev
    dev-eu-w1     = "eu-west-1"

    # Staging
    staging-eu-w1 = "eu-west-1"

    # Prod
    prod-eu-w1    = "eu-west-1"
}

vpc_cidr_block = {
    # Dev
    dev-eu-w1     = "10.0.0.0/24"

    # Staging
    staging-eu-w1 = "10.0.0.1/24"

    # Prod
    prod-eu-w1    = "10.0.0.2/24"
}

subnet_cidr_block = {
    # Dev
    dev-eu-w1     = ["10.0.0.0/28", "10.0.0.16/28", "10.0.0.32/28"]

    # Staging
    staging-eu-w1 = ["10.0.1.0/28", "10.0.1.16/28", "10.0.1.32/28"]

    # Prod
    prod-eu-w1    = ["10.0.2.0/28", "10.0.2.16/28", "10.0.2.32/28"]
}

/*
route_table_info = {
    # Dev
    dev-eu-w1 = {
        # first is the main route
    }

    # Staging
    staging-eu-w1 = "10.0.0.1/28"

    # Prod
    prod-eu-w1    = "10.0.0.2/28"

}*/


sg_ingress_config = {
    # Dev
    dev-eu-w1 = {
        description = "Allow only my IP",
        ip_protocol = "-1",
        cidr_ipv4   = "37.134.208.154/32",
        from_port   = 80,
        to_port     = 80
    }

    # Staging
    staging-eu-w1 = {
        description = "Allow only my IP",
        ip_protocol = "-1"
        cidr_ipv4   = "37.134.208.154/32",
        from_port   = 80,
        to_port     = 80
    } 

    # Prod
    prod-eu-w1 = {
        description = "Allow only my IP",
        ip_protocol = "-1"
        cidr_ipv4   = "37.134.208.154/32",
        from_port   = 80,
        to_port     = 80
    }
}

sg_egress_config = {
    # Dev
    dev-eu-w1 = {
        description = "Allow everything out",
        ip_protocol = "-1"
        cidr_ipv4   = "0.0.0.0/0"
    }

    # Staging
    staging-eu-w1 = {
        description = "Allow everything out",
        ip_protocol = "-1"
        cidr_ipv4   = "0.0.0.0/0"
    } 

    # Prod
    prod-eu-w1 = {
        description = "Allow everything out",
        ip_protocol = "-1"
        cidr_ipv4   = "0.0.0.0/0"
    }
}

r53_details = {
    # Dev
    dev-eu-w1 = {
        name    = "dev.stokes.technology",
        region  = "eu-w1"
        comment = "Dev Internal Route53 zone for Europe West 1"
    }

    # Staging
    staging-eu-w1 = {
        name    = "staging.stokes.technology",
        region  = "eu-w1",
        comment = "Staging Internal Route53 zone for Europe West 1"
    } 

    # Prod
    prod-eu-w1 = {
        name    = "prod.stokes.technology",
        region  = "eu-w1",
        comment = "Prod Internal Route53 zone for Europe West 1"
    }
}