pipeline {
	agent any
	
	stages {
		stage('Clone repo') {
			steps {
				git 'https://github.com/cygday/tomcat-docker-job.git'
			}
		}
		stage('build docker image'){
			steps {
				script {
					dockerImage=docker.build("tomcat:v2")
				}
			}
		}

		stage('run docker container'){
			steps {
				script {
					dockerImage.run("-p 8080:8080")
					}

				}

			}

		}
}
			 
