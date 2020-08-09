currentBuild.displayName="CI/CD-#"+currentBuild.number
pipeline{
	agent any
	

	stages{

		stage("SCM checkout"){
			steps{
				git credentialsId: 'Github', url: 'https://github.com/saikumard99/project.git'
			}
		}

                stage("Build Package"){
                        steps{
                                sh 'mvn clean install'
                        }
                }

		stage("Build Docker Images"){
			steps{
				sh 'sudo ansible-playbook playbook.yaml'
			}
		}

		


	}
}
