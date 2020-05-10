currentBuild.displayName="CI/CD-pipeline-#"+currentBuild.number
pipeline{
	agent any
	environment{
		PATH = "/Terraform:$PATH"
	}

	stages{

		stage("SCM checkout"){
			steps{
				git credentialsId: 'Github', url: 'https://github.com/saikumard99/webapp.git'
			}
		}

		stage("Build Docker Images"){
			steps{
				sh 'sudo ansible-playbook playbook.yaml'
			}
		}

		stage(" testing Terraform"){
			steps{
					dir('Terraform'){
						sh 'terraform version'
						sh 'terraform init'
						}


		    }

		}

	}
}
