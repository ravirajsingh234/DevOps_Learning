pipeline {

		agent any 
		stages {
			stage('Ansible deployment'){
				steps{
					sh 'ansible-playbook deploy.yaml'
			}
		}
	}
}
