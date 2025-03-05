pipeline {

		agent any 
		stages {
			stage('Backup and restore strategy'){
				steps{
					sh 'chmod +x analyze-log.sh'
					sh './analyze-log.sh'
			}
		}
	}
}
