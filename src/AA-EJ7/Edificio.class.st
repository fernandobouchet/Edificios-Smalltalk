Class {
	#name : #Edificio,
	#superclass : #Object,
	#instVars : [
		'cantPisos',
		'departamentos',
		'ascensores'
	],
	#category : #'AA-EJ7'
}

{ #category : #initialization }
Edificio class >> initializeCantPisos: unInt [
| edificio |
edificio := super new .
	edificio cantPisos: unInt .
	edificio departamentos: OrderedCollection new .
	edificio ascensores: OrderedCollection new .
	
^edificio 
]

{ #category : #accessing }
Edificio >> agregarAscensor: unAscensor [
ascensores add: unAscensor
]

{ #category : #accessing }
Edificio >> agregarDepartamentos: algunosDepartamentos [ 
departamentos addAll: algunosDepartamentos
]

{ #category : #accessing }
Edificio >> ascensores [
^ascensores 
]

{ #category : #accessing }
Edificio >> ascensores: unAscensor [
ascensores := unAscensor
]

{ #category : #accessing }
Edificio >> cantPisos [
^cantPisos 
]

{ #category : #accessing }
Edificio >> cantPisos: unInt [
cantPisos := unInt
]

{ #category : #accessing }
Edificio >> departamentos [
^departamentos 
]

{ #category : #accessing }
Edificio >> departamentos: unDepartamento [
departamentos := unDepartamento 
]

{ #category : #functions }
Edificio >> tieneDeptoSuperpoblado [
^ departamentos anySatisfy: [:departamento | departamento estaSuperpoblado ].
]
