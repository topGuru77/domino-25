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

        stage('Auto Git Commit & Push') {
            steps {
                withCredentials([string(credentialsId: 'GITHUB_PAT', variable: 'TOKEN')]) {
                    sh '''
                        git config --global user.email "kwamenadollar17@yahoo.com"
                        git config --global user.name "topGuru77"
                        git remote set-url origin https://topGuru77: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@github.com/topGuru77/domino-25.git

                        git add .
                        git commit -m "Auto commit after Terraform apply" || echo "Nothing to commit"
                        git push origin main
                    '''
                }
            }
        }
    }
}
