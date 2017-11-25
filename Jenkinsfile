node {
    stage('Show') {
      sh 'pwd'
    }
    /* Requires the Docker Pipeline plugin to be installed */
    docker.image('sneakybeaky/kitchen-ec2:latest').inside('-v $(pwd):/apps/ -v ${HOME}/.aws/credentials:/root/.aws/credentials -v ${HOME}/.ec2/:/root/.ec2/ -w /apps/') {
        stage('Test') {
            sh 'kitchen test'
        }
    }
}
