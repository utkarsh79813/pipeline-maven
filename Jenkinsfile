pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh '''
                echo we are building jar file and then creating images out of it
                sleep 2
                ./build.sh mvn -B -DskipTests clean package
                '''
            }
        }
        stage ('Test') {
            steps {
                sh '''
                echo we are testing the code
                ./test.sh mvn test 
                '''
            }

        }
        stage ('Push') {
            steps {
                sh '''
                echo we are pushing the image to docker hub
                ./push.sh
                '''
            }
        }
        stage ('Deploy') {
            steps {
                sh '''
                echo we are deploying the image
                ./deploy.sh
                '''
            }
        }
    }
}
