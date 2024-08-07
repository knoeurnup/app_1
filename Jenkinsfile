pipeline {
    agent any
    parameters {
        string(name: 'PVERSION', defaultValue: 'v1.0.0', description: 'Version number')
    }
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World ${params.PVERSION}'
            }
        }
    }
}
