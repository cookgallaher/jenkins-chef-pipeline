node {
    stage('Show') {
      checkout scm
      sh 'ls -l /var/lib/jenkins/workspace/chef'
    }
    /* Requires the Docker Pipeline plugin to be installed */
    docker.image('sneakybeaky/kitchen-ec2:latest').inside('-v /var/lib/jenkins/workspace/chef/:/apps/ -v ${HOME}/.aws/credentials:/root/.aws/credentials -v ${HOME}/.ec2/:/root/.ec2/ -w /apps/') {
        stage('Test') {
            sh 'kitchen test'
        }
    }
}
