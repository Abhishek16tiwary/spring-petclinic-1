pipeline{
    agent{label 'AGENT'}
    triggers{ pollSCM ('* * * * *') }
    stages{
        stage('Version Control Syatem'){
            steps{
                git url : 'https://github.com/Abhishek16tiwary/spring-petclinic-1.git',
                    branch : 'main'
            }
        }
        stage('Build Package'){
            steps{
                sh 'mvn package'
            }
        }
        stage('Static Code Analysis'){
            steps{
                withwithSonarQubeEnv('Sonar_Cloud'){
                    sh 'mvn clean verify sonar:sonar -Dsonar.organization=spring16 -Dsonar.projectKey=spring16'
                }
            }
        }
        // stage('Archive Artifact'){
        //     steps{
        //         archiveArtifacts artifacts: '**/target/spring-petclinic-3.1.0-SNAPSHOT.jar',
        //             onlyIfSuccessful : true,
        //             allowEmptyArchive : false
        //     }
        // }
        // stage('Publish Junit Results'){
        //     steps{
        //         junit testResults : '**/surefire-reports/TEST-*.xml'
        //     }
        // }
    }
}