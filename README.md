🚀 Deploying an AWS EC2 Instance Using Terraform


This repository provides an Infrastructure as Code (IaC) solution for provisioning an AWS EC2 instance using Terraform. It automates the deployment process, ensuring consistency, scalability, and repeatability.

📌 Features
✅ Automated EC2 instance provisioning
✅ Customizable instance type, AMI, and region
✅ Secure key-pair setup for SSH access
✅ Easy teardown with a single command

📂 Project Structure
graphql
Copy
Edit
📁 terraform-ec2/
│── 📜 main.tf          # Defines EC2 instance configuration  
│── 📜 variables.tf     # Stores configurable parameters  
│── 📜 outputs.tf       # Displays key instance details  
│── 📜 provider.tf      # Configures AWS provider  
│── 📜 terraform.tfvars # Contains variable values (gitignored if sensitive)  
│── 📜 README.md        # Project documentation  
🚀 Getting Started
1️⃣ Prerequisites

#### Before running this project, ensure you have:

_✅ An AWS account with programmatic access_
_✅ Terraform installed (terraform -v to check)_
_✅ Configured AWS CLI with proper credentials_
2️⃣ Clone the Repository
sh
Copy
Edit
cd terraform-ec2
3️⃣ Initialize Terraform
sh
Copy
Edit
terraform init
4️⃣ Plan the Deployment
sh
Copy
Edit
terraform plan
5️⃣ Apply Changes & Create EC2 Instance
sh
Copy
Edit
terraform apply -auto-approve
6️⃣ Access Your EC2 Instance
Once deployed, find the Public IP in the Terraform output and connect via SSH:

sh
Copy
Edit
ssh -i your-key.pem ec2-user@your-ec2-public-ip
🔥 Cleanup & Destroy Resources
To remove all resources and avoid charges, run:

sh
Copy
Edit
terraform destroy -auto-approve
### 📌 Notes
Modify variables.tf to customize instance settings
Use terraform.tfvars for secure variable storage (avoid committing secrets)
Ensure AWS credentials are properly configured before deployment

### 🛠️ Technologies Used

🔹 Terraform
