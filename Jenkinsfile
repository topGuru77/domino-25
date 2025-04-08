pipeline {
    agent any

    environment {
        GIT_REPO = "https://github.com/topGuru77/domino-25.git"
        BRANCH = "main"
    }

    stages {
        stage('Terraform Init & Plan') {
            steps {
                sh '''
                    terraform init
                    terraform plan -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        
        stage('Git Push via SSH') {
            steps {
                sshagent(['GITHUB_SSH_KEY']) {
                    sh '''
                        git config --global user.email "kwamenadollar17@yahoo.com"
                        git config --global user.name "topGuru77"

                        git add .
                        git commit -m "Auto commit after Terraform apply" || echo "Nothing to commit"
                        git push origin main
                    '''
                }
            }




            }
        }
    }

