pipeline {
    agent any
    parameters {
      gitParameter(
        name: 'BRANCH',           // Name of the parameter
        type: 'PT_BRANCH',        // Type can be PT_BRANCH, PT_TAG, PT_REVISION
        defaultValue: 'main',     // Default value for the parameter
        description: 'Select the Git branch to build',
        useRepository: 'https://github.com/knoeurnup/app_1.git',  // Specify the repository URL if needed
        branch: '',               // Filter for branches (optional)
        tagFilter: '',            // Filter for tags (optional)
        sortMode: 'ASCENDING_SMART', // Sorting mode
        selectedValue: 'TOP'      // Default selected value
      ),
      gitParameter(
        name: 'TAGS',           // Name of the parameter
        type: 'PT_TAG',        // Type can be PT_BRANCH, PT_TAG, PT_REVISION
        defaultValue: 'v1.0.0',     // Default value for the parameter
        description: 'Select the Git branch to build',
        useRepository: 'https://github.com/knoeurnup/app_1.git',  // Specify the repository URL if needed
        branch: '',               // Filter for branches (optional)
        tagFilter: '',            // Filter for tags (optional)
        sortMode: 'DESCENDING_SMART', // Sorting mode
        selectedValue: 'TOP'      // Default selected value
      )
    }
    stages {
        stage('Checkout') {
          steps {
              // Checkout the selected branch
              checkout([
                  $class: 'GitSCM',
                  branches: [[name: "*/${params.BRANCH}"]],
                  userRemoteConfigs: [[url: 'https://github.com/knoeurnup/app_1.git']]
              ])
          }
        }

        stage('Build') {
          steps {
            echo "Building branch: ${params.BRANCH}"
            // Add your build steps here
            echo "Building branch: ${params.TAGS}"
          }
        }
    }
}
