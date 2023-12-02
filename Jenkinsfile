node {
def app
stage('Clone repository') {
git 'https://github.com/Cheese-Guardians-Opensource/cheese.git'
}
stage('Build image') {
app = docker.build("haeun161/test")
}
stage('Test image') {
app.inside {
sh 'make test'
}
}
stage('Push image') {
docker.withRegistry('https://registry.hub.docker.com', 'haeun161') {
app.push("${env.BUILD_NUMBER}")
app.push("latest")
}
}
}
