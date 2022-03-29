object olivia {

	var gradoDeConcentracion = 6

	// getter de concentracion
	method gradoDeConcentracion() {
		return gradoDeConcentracion
	}

	// Metodos
	method discutir() {
		gradoDeConcentracion -= 1
	}

	method estoyEnElSpa() {
		self.masajes()
	}

	method masajes() {
		gradoDeConcentracion += 3
	}

}

object bruno {

	var felicidad = true
	var sed = false
	var peso = 55000

	method estoyEnElSpa() {
		self.masajes()
		self.banioDeVapor()
	}

	method masajes() {
		felicidad = true
	}

	method banioDeVapor() {
		peso -= 500
		sed = true
	}

	// Acciones Personales
	method tomarAgua() {
		sed = false
	}

	method comerFideos() {
		peso += 250
		sed = true
	}

	method correr() {
		peso -= 300
	}

	method verNoticiero() {
		felicidad = false
	}

	// Getters
	method estaPerfecto() {
		return felicidad and (not sed) and peso > 50000 and peso < 70000
		//Metodo para no usar dos comparaciones
		//peso.between(50000, 70000)
	}

	// Accion conjunta en un metodo
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}

}

object ramiro {

	var contracturacion = 0
	var grasaDeLaPiel = false

	method estoyEnElSpa() {
		self.masajes()
		self.banioDeVapor()
	}

	method masajes() {
		contracturacion -= 2
		if (contracturacion < 0) {
			contracturacion = 0
		}
		//Forma sin usar un if
		//contracturacion.max(0)
	}

	method banioDeVapor() {
		grasaDeLaPiel = false
	}

	method comerBigMag() {
		grasaDeLaPiel = true
	}

	method bajarFosa() {
		grasaDeLaPiel = true
		contracturacion += 1
	}

	method jugarPaddle() {
		contracturacion += 3
	}

	// Accion conjunta en un metodo
	method diaDeTrabajo() {
		self.bajarFosa()
		self.comerBigMag()
		self.bajarFosa()
	}

	// getter
	method contracturacion() {
		return contracturacion
	}

	method grasaDeLaPiel() {
		return grasaDeLaPiel
	}

}

object spa {

	var ultimoCliente

	method atender(persona) {
		if (ultimoCliente == persona) {
			persona.masajes()
		}
		persona.estoyEnElSpa()
		ultimoCliente = persona
	}

}
	
