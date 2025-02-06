pipeline {
    agent any

    environment {
        API_URL = "http://localhost:5000/variables" // Change this to your API endpoint
    }

    stages {
        stage('Set Variables') {
            steps {
                script {
                    def data = [Name: "Raviraj", Age: "26"]
                    def json = groovy.json.JsonOutput.toJson(data)

                    // Store data via REST API
                    sh """
                    curl -X POST -H "Content-Type: application/json" -d '${json}' ${API_URL}
                    """
                    echo "Variables sent to API"
                }
            }
        }

        stage('Get Variables') {
            steps {
                script {
                    def response = sh(script: "curl -s ${API_URL}", returnStdout: true).trim()
                    def parsedData = readJSON(text: response)

                    echo "Received Variables: Name = ${parsedData.key1}, Age = ${parsedData.key2}"
                }
            }
        }

        stage('Use Variables') {
            steps {
                script {
                    echo "Using Variables from API"
                    echo "Name: ${parsedData.Name}, Age: ${parsedData.Age}"
                }
            }
        }
    }
}
`
