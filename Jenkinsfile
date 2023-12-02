node {
	def app
	stage('Clone repository') {
		git 'https://github.com/haeun161/cheese.git'
	}
	stage('Build image') {
		app = docker.build("haeun161/test")
	}
	stage('Test image') {
		app.inside {
			sh 'node main.js'
		}
	}
	stage('Push image') {
		docker.withRegistry('https://registry.hub.docker.com', 'haeun161') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		}
	}
}
