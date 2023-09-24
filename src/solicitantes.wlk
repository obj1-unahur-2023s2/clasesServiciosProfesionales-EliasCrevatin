import profesionales.*

class Persona {
	var property provinciaDondeVive
	
	method puedeSerAtendidoPor(unProfesional){
		return unProfesional.provinciasDondePuedeTrabajar().contains(provinciaDondeVive)
	}
}

class Institucion{
	const universidadesQueReconoce = #{}
	
	method agregarUniversidades(unaUniversidad){ universidadesQueReconoce.add(unaUniversidad)}
	method eliminarUniversidades(unaUniversidad){ universidadesQueReconoce.remove(unaUniversidad)}
	method puedeSerAtendidoPor(unProfesional){
		return universidadesQueReconoce.contains({unProfesional.universidad()})
	}
}

class Club{
	const provincias = #{}
	
	method agregarProvincias(unaProvincias){ provincias.add(unaProvincias)}
	method eliminarProvincias(unaProvincias){ provincias.remove(unaProvincias)}
	method puedeSerAtendidoPor(unProfesional){
		return not provincias.intersection(unProfesional.provinciasDondePuedeTrabajar()).isEmpty()
	}
	
	
}

