node {
    stage('Show') {
      checkout scm
      sh 'ls -l /var/lib/jenkins/workspace/chef'
    }
    /* Requires the Docker Pipeline plugin to be installed */
    docker.image('sneakybeaky/kitchen-ec2:latest').inside('-u 0 -v /var/lib/jenkins/workspace/chef/:/apps/ -v /var/lib/jenkins/.aws/credentials:/root/.aws/credentials -v /var/lib/jenkins/.ec2/:/root/.ec2/ -w /apps/') {
        stage('Docker Test'){
          sh 'whoami'
        }
        stage('Test') {
          try{
            sh "kitchen test"
          } catch (err) {
            error "Kitchen tests failed: ${err}"
          } finally {
            sh "kitchen destroy"
          }
        }
    }
}
