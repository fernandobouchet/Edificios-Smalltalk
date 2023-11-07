Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'peso',
		'esAptoEscaleras'
	],
	#classInstVars : [
		'nombre',
		'peso',
		'esAptoEscaleras'
	],
	#category : #'AA-EJ7'
}

{ #category : #initialization }
Persona class >> initializeConNombre: unString peso: unInt esAptoEscaleras: unBoolean [
| persona |
persona := super new .
persona nombre: unString.
persona peso: unInt.
persona esAptoEscaleras: unBoolean .

^persona
]

{ #category : #accessing }
Persona >> esAptoEscaleras [
^esAptoEscaleras
]

{ #category : #accessing }
Persona >> esAptoEscaleras: unBoolean [
esAptoEscaleras := unBoolean 
]

{ #category : #functions }
Persona >> mudarADepto: unDepartamento [
unDepartamento agregarHabitante: self .

]

{ #category : #accessing }
Persona >> nombre [
^nombre
]

{ #category : #accessing }
Persona >> nombre: unString [
nombre := unString 
]

{ #category : #accessing }
Persona >> peso [
^peso
]

{ #category : #accessing }
Persona >> peso: unInt [
peso := unInt
]
