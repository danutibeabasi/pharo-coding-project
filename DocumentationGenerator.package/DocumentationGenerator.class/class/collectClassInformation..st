as yet unclassified
collectClassInformation: aClass
    "data collection"

    | superClass subClasses instVars methods |
    superClass := aClass superclass.
    subClasses := aClass subclasses.
    instVars := aClass allInstVarNames.
    methods := aClass methodDictionary keys collect: [ :eachMethod |
        | method |
        method := aClass compiledMethodAt: eachMethod.
        { eachMethod asString. (method comment isEmptyOrNil ifTrue: [ 'No comment' ] ifFalse: [ method comment ]) }
    ].
    Transcript show: 'Collected information for class: ', aClass name; cr.
    ^Dictionary newFrom: {
        #className -> aClass name.
        #superclass -> (superClass ifNil: [ 'None' ] ifNotNil: [ superClass name ]).
        #subclasses -> (subClasses isEmpty ifTrue: [ 'None' ] ifFalse: [ subClasses collect: #name ]).
        #instanceVariables -> instVars.
        #methods -> methods
    }.