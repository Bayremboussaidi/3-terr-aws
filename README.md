The architecture deployed within AWS is designed to ensure high availability, fault tolerance, and scalability for the hosted application. At its core lies a Virtual Private Cloud (VPC) spanning 3 availability zones (AZs) within the selected region. This VPC is divided into private and public subnets, with each AZ housing two private subnets and one public subnet. The private subnets serve as isolated environments for backend services and database instances, while the public subnets facilitate external communication.

Across the private subnets of the AZs, an Auto Scaling Group (ASG) dynamically manages the provisioning and scaling of EC2 instances based on demand, ensuring optimal performance and resource utilization. Additionally, an Application Load Balancer (ALB) is strategically positioned between the AZs to evenly distribute incoming traffic, enhancing the availability and resilience of the application.

the architecture incorporates Relational Database Service (RDS) instances deployed in private subnets of one AZ, providing managed and scalable database solutions for storing application data. To bolster data redundancy and failover capabilities, multi-AZ configurations are employed for critical RDS instances, ensuring continuous operation even in the event of AZ-level failures.




