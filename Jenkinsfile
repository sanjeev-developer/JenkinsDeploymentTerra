pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/sanjeev-developer/JenkinsDeploymentTerra.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Validate') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('Terraform destroy') {
            steps {
                // Manual approval step
                input 'Approve destroying resources?'
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}

