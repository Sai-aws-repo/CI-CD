currentBuild.displayName="iowa/project-#"+currentBuild.number
pipeline{
	agent any
	environment{
		PATH = "/Terraform:$PATH"
	}

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

		stage(" testing Terraform"){
			steps{
				withCredentials([[$class: 'AmazonWebServicesCredentialsBinding',
					  accessKeyVariable: 'AWS_ACCESS_KEY_ID',
					  credentialsId: '29ab747c-0204-4567-872c-af51ca7dc1bf',
					  secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
					dir('Terraform'){
						sh 'terraform version'
						sh 'terraform init'
						sh 'terraform apply -auto-approve'
						}

				}
		    }

		}


	}
}
