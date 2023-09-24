import universidades.* 

class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrar(unImporte){ 
		AsociacionDeProfesionalesDelLitoral.recibirDonacion(unImporte)
	}
}


class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar(){return #{universidad.provincia()}}
	method honorariosPorHora() { return universidad.honorariosRecomendados()}
	method cobrar(unImporte){ 
		universidad.recibirDonacion(unImporte/2)
	}
}



class ProfesionalLibre {
	var property universidad
	const provincia = #{}
	var property honorarosPorHora
	var totalRecaudado = 0
	
	
	method agregarProvincia(unaProvincia){provincia.add{unaProvincia}}
	method quitarProvincia(unaProvincia){provincia.add{unaProvincia}}
	method provinciasDondePuedeTrabajar() = provincia
	method cobrar(unImporte){
		totalRecaudado += unImporte
	}
	
	method pasarDinero(unImporte, unProfesional){
		unProfesional.cobrar(unImporte.min(totalRecaudado))
		totalRecaudado -= unImporte.min(totalRecaudado)
	}
}
