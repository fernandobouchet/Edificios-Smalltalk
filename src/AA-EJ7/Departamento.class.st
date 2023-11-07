Class {
	#name : #Departamento,
	#superclass : #Object,
	#instVars : [
		'piso',
		'letra',
		'cantAmbientes',
		'habitantes'
	],
	#category : #'AA-EJ7'
}

{ #category : #initialization }
Departamento class >> initializeConPiso: unString letra: otroString cantAmbientes: unInt [
| departamento |
departamento := super new .
	departamento piso: unString .
	departamento letra: otroString .
	departamento cantAmbientes: unInt .
	departamento habitantes: OrderedCollection new .
	
^departamento 
]

{ #category : #functions }
Departamento >> agregarHabitante: unaPersona [
habitantes add: unaPersona 
]

{ #category : #accessing }
Departamento >> cantAmbientes [
^cantAmbientes 
]

{ #category : #accessing }
Departamento >> cantAmbientes: unInt [
cantAmbientes := unInt
]

{ #category : #functions }
Departamento >> estaSuperpoblado [
    ^ habitantes size > (cantAmbientes * 2)
]

{ #category : #functions }
Departamento >> getCantidadHabitantes [
^habitantes size .
]

{ #category : #accessing }
Departamento >> habitantes [
^habitantes
]

{ #category : #accessing }
Departamento >> habitantes: unaPersona [
habitantes := unaPersona
]

{ #category : #accessing }
Departamento >> letra [
^letra
]

{ #category : #accessing }
Departamento >> letra: unString [
letra := unString
]

{ #category : #functions }
Departamento >> obtenerPesoHabitantes [
^ habitantes sum: [:habitante | habitante peso]
]

{ #category : #accessing }
Departamento >> piso [
^piso
]

{ #category : #accessing }
Departamento >> piso: unInt [
piso := unInt
]

{ #category : #functions }
Departamento >> quitarHabitante: unaPersona [
habitantes remove: unaPersona 
]

{ #category : #functions }
Departamento >> todosPuedenViajarEnAscensor: unEdificio [
^unEdificio ascensores allSatisfy: [:ascensor | (ascensor pesoMaximo >= self obtenerPesoHabitantes) and: (ascensor capacidadMaxima >= self getCantidadHabitantes) ]
]
