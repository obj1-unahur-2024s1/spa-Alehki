object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion () {
		return gradoDeConcentracion
	}
	
	method recibirMansajes () {
		gradoDeConcentracion = gradoDeConcentracion + 3
	}
	
	method discutir () {
		gradoDeConcentracion = gradoDeConcentracion - 1
	}

	method darseUnBano(){}
	
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method darseUnBano () {
		peso = peso - 500
		tieneSed = true
	}
	
	method tomarAgua () {
		tieneSed = false
	}
	
	method comerFideos () {
		peso = peso + 250
		tieneSed = true
	}
	
	method correr () {
		peso = peso - 300
	}
	
	method verNoticiero () {
		esFeliz = false
	}
	
	method estaPerfecto () {
		return esFeliz && !tieneSed && peso.between(50000, 70000)
	}
	
	method medioDiaEnCasa () {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
	
	method recibirMansajes (){}
}


object ramiro{
	var contracturado = 0
	var esPielGrasosa = false
	
	method nivelDeContractura(){
		return contracturado
	}
	
	method esPielGrasosa(){
		return esPielGrasosa
	}
	
	method recibirMasajes () {
		if( contracturado == 0 or contracturado == 1 ) contracturado = 0
		if( contracturado >= 2 ) contracturado = contracturado - 2 
	}
	
	method darseUnBano(){
		esPielGrasosa = false
	}
	
	method comerBigMac(){
		esPielGrasosa = true
	}
	
	method bajarALaFosa(){
		esPielGrasosa = true
		contracturado = contracturado + 1
	}
	
	method jugarPaddle() {
		contracturado = contracturado + 3
	}
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
	
}


object spa {
	method atender( unaPersona ){
		unaPersona.recibirMasajes()
		unaPersona.darseUnBano()
	}
}