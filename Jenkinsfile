def  workspace_dir = '/home/ubuntu/workspace/workspace/ODM-Workflow-Dockerbuild_master'

node {
  stage('checkout') {
    deleteDir()
    checkout scm
  }
  stage('Build Docker image') {
    dockerImage = docker.build("frf1976/odm:${env.BUILD_ID}", "${workspace_dir}/odm/")
  }
  stage('Upload Docker image') {
    docker.withRegistry('https://registry-1.docker.io/v2/', 'frf1976-dockerhub') {
      dockerImage.push()
      dockerImage.push('latest')
    }
  }
}
