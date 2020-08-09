currentBuild.displayName="CI/CD-#"+currentBuild.number
pipeline{
	agent any
	

	stages{

		stage("SCM checkout"){
			steps{
				git credentialsId: 'Github', url: 'https://github.com/Sai-aws-repo/CI-CD.git'
			}
		}

                stage("Build Package"){
                        steps{
				def mvnHome = tool name: 'Maven', type: 'maven'
				sh "${mvnHome}/bin/mvn clean install"
                        }
                }

		stage("Build Docker Images"){
			steps{
				sh 'sudo ansible-playbook playbook.yaml'
			}
		}

		


	}
}
