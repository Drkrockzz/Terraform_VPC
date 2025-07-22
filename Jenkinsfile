pipeline{
    agent any 
    stages{
        stage("clone repo"){
            steps{
                git branch:'main', url:'https://github.com/Drkrockzz/Terraform_VPC.git'
            }
        }
        stage("terraform initialize"){
            steps{
              sh 'terraform init'
             }
        }
        stage("terraform plan"){
            steps{
                sh 'terraform plan'
            }
        }
        stage("terraform apply"){
            steps{
                input message: "Approve to apply changes?", ok: "Apply"
                sh 'terraform apply -auto-approve'
            }
        }
    }
}   
     
    


#terraform InstallApp
sudo dnf install -y dnf-plugins-core \
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo \
sudo dnf -y install terraform