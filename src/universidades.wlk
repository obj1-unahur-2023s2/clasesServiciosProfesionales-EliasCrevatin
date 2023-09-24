class Universidad {
	var property provincia
	var property honorariosRecomendados = 0
	var donacionesTotales = 0
	
	method recibirDonacion(unValor){ donacionesTotales += unValor}
		
}

object asociacionDeProfesionalesDelLitoral{
	var  donacionesTotales = 0
	method recibirDonacion(unValor){ donacionesTotales += unValor}
}