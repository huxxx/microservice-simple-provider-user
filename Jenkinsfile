node('docker-agent'){
    stage("checkout"){
        git branch: '${BRANCH_NAME}', credentialsId: 'ce4f3e25-557e-44ac-80bb-abc50c20960b', url: 'git@github.com:huxxx/microservice-simple-provider-user.git' 
    }
    stage('build'){
        sh "sudo mvn clean install deploy"	
		sh "sudo docker rmi \$(sudo docker images huxxx/microservice-simple-provider-user -q)"
    }
}
