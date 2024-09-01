#!/usr/bin/env groovy
// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('PreStage 1') {
            steps {
                echo 'Hello world!'
            }
        }
        stage('PreStage 2') {
            steps {
                echo 'Stage 2 steps1'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit '**/target/surefire-reports/*.xml'
                }
            }
        }

    }
}
