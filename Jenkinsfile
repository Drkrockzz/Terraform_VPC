pipeline{
    agent any 
    stages{
        stage("clone repo"){
            steps{
                git url 
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
     
    