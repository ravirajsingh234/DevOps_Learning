pipeline {

		agent any 
		stages {
			stage('Backup and restore strategy'){
				steps{
					sh 'aws s3 sync ./data s3://backup-bucket/data'
			}
		}
	}
}
