object olivia {
	var gradoDeConcentracion=6
	
	//getter de concentracion
	method gradoDeConcentracion(){
		return gradoDeConcentracion
	}
	
	//Metodos
	method discutir(){
		gradoDeConcentracion-=1
	}
	
	method estoyEnElSpa(){
		self.masajes()
	}
	
	method masajes(){
		gradoDeConcentracion+=3	
	}
}

object bruno{
	var felicidad="si"
	var sed="no"
	var peso=55000
	
	method estoyEnElSpa(){
		self.masajes()
		self.banioDeVapor()
	}
	
	method masajes(){
		felicidad="si"
	}
	
	method banioDeVapor(){
		peso-=500
		sed="si"
	}
	//Acciones Personales
	method tomarAgua(){
		sed="no"
	}
	method comerFideos(){
		peso+=250
		sed="si"
	}
	method correr(){
		peso-=300
	}		
	method verNoticiero(){
		felicidad="no"
	}
	//Getters
	method estaPerfecto(){
		var mensaje=""
		if(felicidad=="si" and sed=="no" and peso>50000 and peso<70000){
			mensaje="Estoy perfecto"
		}
		else mensaje="No estoy perfecto"
		return mensaje
	}
	//Accion conjunta en un metodo
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
	
}

object ramiro{
	var contracturacion=0
	var grasaDeLaPiel="NoGrasosa"
	
	method estoyEnElSpa(){
		self.masajes()
		self.banioDeVapor()
	}
	
	method masajes(){
		contracturacion-=2
		if(contracturacion<0){
			contracturacion=0
		}
	}
	
	method banioDeVapor(){
		grasaDeLaPiel="NoGrasosa"
	}
	
	method comerBigMag(){
		grasaDeLaPiel="Grasosa"
	}
	method bajarFosa(){
		grasaDeLaPiel="Grasosa"
		contracturacion+=1
	}
	method jugarPaddle(){
		contracturacion+=3
	}
	//Accion conjunta en un metodo
	
	method diaDeTrabajo(){
		self.bajarFosa()
		self.comerBigMag()
		self.bajarFosa()
	}
	
	//getter
	method contracturacion(){
		return contracturacion
	}
	method grasaDeLaPiel(){
		return grasaDeLaPiel
	}
}

object spa{
	var ultimoCliente
	
	method atender(persona){
		
		if (ultimoCliente==persona){
			persona.masajes()
		}
		persona.estoyEnElSpa()
		ultimoCliente=persona	
	}
	
	 
	
}




