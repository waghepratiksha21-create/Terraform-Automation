pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['plan', 'apply'],
            description: 'Select the action to perform'
        )

        string(
            name: 'BRANCH',
            defaultValue: 'main',
            description: 'Branch to build (e.g., main, feature/my-branch)'
        )
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scmGit(
                    branches: [[name: "*/${params.BRANCH}"]],
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/waghepratiksha21-create/Terraform-Automation.git']]
                )
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }

        stage('Action') {
            steps {
                script {
                    switch (params.ACTION) {

                        case 'plan':
                            echo 'Executing Plan...'
                            sh 'terraform plan'
                            break

                        case 'apply':
                            echo 'Executing Apply...'
                            sh 'terraform apply --auto-approve'
                            break

                        default:
                            error 'Unknown action'
                    }
                }
            }
        }
    }
}
