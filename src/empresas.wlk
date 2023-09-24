import profesionales.*
import universidades.*
import solicitantes.*

class Empresa {
 	var property honorariosDeReferencia 
	const profesionales = #{}
	
	method cuantosEstudiaronEn(unaUniversidad) = profesionales.count({p => p.universidad() == unaUniversidad})
	method profesionalesCaros(){
		return profesionales.filter({p => p.honorariosPorHora() > honorariosDeReferencia})
		}
		
	method universidadesFormadoras(){
		return profesionales.map({p => p.universidad()}).asSet()
	}
	
	method profesionalMasBarato(){
		return profesionales.min({p => p.honorariosPorHora()})
	}
	
	method esDeGenteAcotadaConAny(){
		return not profesionales.any({p => p.provinciasDondePuedeTrabajar().size() > 3})
	}
	
	method esDeGenteAcotadaConAll(){
		return not profesionales.any({p => p.provinciasDondePuedeTrabajar().size() < 3})
	}
	
	method puedeSatisfacerAUnSolicitante(unSolicitante){
		return profesionales.any({p => unSolicitante.puedeSerAtendidoPor(p)})
	}
	
	//hacer etapa 4 (anyOne)
	method darServicio(unSolicitante){
		//profesionales.anyOne({p => p.puedeSatisfacerAUnSolicitante(unSolicitante)})
	}
}
