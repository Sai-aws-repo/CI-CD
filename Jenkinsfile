currentBuild.displayName="CI/CD-#"+currentBuild.number
pipeline{
	agent any
	environment {
        	PATH = "/opt/maven/apache-maven-3.6.3:$PATH"
	}
	

	stages{

		stage("SCM checkout"){
			steps{
				git credentialsId: 'Github', url: 'https://github.com/Sai-aws-repo/CI-CD.git'
			}
		}

        stage("Build Package"){
            steps{
				sh 'mvn clean install'
            }
        }

		stage("Build Docker Images"){
			steps{
				sh 'sudo ansible-playbook docker.yaml'
			}
		}

		


	}
}
