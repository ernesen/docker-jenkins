

podTemplate(label: 'somepod', 
	containers: [
		containerTemplate(name: 'docker', image: 'getintodevops/jenkins-withdocker:lts', alwaysPullImage: true, ttyEnabled: true, command: '/bin/sh -c', args: 'cat')
	], volumes: [hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')]
) {
    node('somepod') {
		container('docker') {
		sh """
		docker version
		docker images
		"""
		}
	}
}

