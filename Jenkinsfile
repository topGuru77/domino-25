pipeline {
    agent any

    environment {
        GIT_REPO = "https://github.com/topGuru77/domino-25.git"
        BRANCH = "main"
    }

    stages {
        stage('SCM checkout Code with jenkins server') {
            steps {
                script {
                    // Clone the repository
                    checkout scm
                }
            }
        }

        stage('Terraform Init & Plan') {
            steps {
                script {
                    sh '''
                    terraform init
                    terraform plan -out=tfplan
                    '''
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }

        stage('Auto Git Commit & Push') {
            steps {
                script {
                    sh '''
                    git config --global user.email "kwamenadollar17@yahoo.com"
                    git config --global user.name "topGuru77"

                    git add .
                    git commit -m "Auto commit after Terraform apply"
                    git push origin $BRANCH
                    '''
                }
            }
        }
    }
}