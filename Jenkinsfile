pipeline {
    agent any

    stages{
        stage('cloning'){
            steps{
                git 'https://github.com/cultofcloud/spring-petclinic'
            }
        }

        stage('build'){
            steps{
                sh label: '', script: './mvnw package'
            }
        }

        stage('dockerlogin')
        {
            steps {
                withDockerRegistry([ credentialsId: "77b6ed68-1e71-4135-8025-63d8ab4e6256", url: "https://index.docker.io/v1/" ]) {
                // following commands will be executed within logged docker registry
                }
            }
        }
        stage('dockerimage'){
            steps{
                script {
                    def customImage = docker.build "cultofcloud/petclinic"
                    customImage.push()
                }
            }
        }
        
    }
}