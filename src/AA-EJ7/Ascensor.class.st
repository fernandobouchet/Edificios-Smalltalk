Class {
	#name : #Ascensor,
	#superclass : #Object,
	#instVars : [
		'capacidadMaxima',
		'pesoMaximo',
		'pisoActual',
		'enMovimiento'
	],
	#category : #'AA-EJ7'
}

{ #category : #initialization }
Ascensor class >> initializeConCapacidadMaxima: unInt pesoMaximo: otroInt pisoActual: otroInt2 enMovimiento: unBoolean [
| ascensor |
ascensor := super new .
	ascensor capacidadMaxima: unInt .
	ascensor pesoMaximo: otroInt .
	ascensor pisoActual: otroInt2 .
	ascensor enMovimiento: unBoolean  .
	
^ascensor 
]

{ #category : #accessing }
Ascensor >> capacidadMaxima [
^capacidadMaxima
]

{ #category : #accessing }
Ascensor >> capacidadMaxima: unInt [
capacidadMaxima := unInt
]

{ #category : #accessing }
Ascensor >> enMovimiento [
^enMovimiento
]

{ #category : #accessing }
Ascensor >> enMovimiento: unBoolean [
enMovimiento := unBoolean
]

{ #category : #accessing }
Ascensor >> pesoMaximo [
^pesoMaximo
]

{ #category : #accessing }
Ascensor >> pesoMaximo: unInt [
pesoMaximo := unInt
]

{ #category : #accessing }
Ascensor >> pisoActual [
^pisoActual
]

{ #category : #accessing }
Ascensor >> pisoActual: unInt [
pisoActual := unInt
]
