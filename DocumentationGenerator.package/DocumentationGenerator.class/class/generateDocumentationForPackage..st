as yet unclassified
generateDocumentationForPackage: packageName
    "documentation generation"

    | classes documentation |
    classes := (RPackageOrganizer default packageNamed: packageName) definedClasses.
    Transcript show: 'Generating documentation for package: ', packageName; cr.
    documentation := String streamContents: [ :stream |
        classes do: [ :eachClass |
            | classInfo |
            classInfo := self collectClassInformation: eachClass.
            stream
                nextPutAll: 'Class: '; nextPutAll: (classInfo at: #className); cr;
                nextPutAll: 'Superclass: '; nextPutAll: (classInfo at: #superclass); cr;
                nextPutAll: 'Subclasses: '; nextPutAll: ((classInfo at: #subclasses) asString); cr;
                nextPutAll: 'Instance Variables: '; nextPutAll: ((classInfo at: #instanceVariables) asString); cr;
                nextPutAll: 'Methods: '; cr.
            (classInfo at: #methods) do: [ :methodInfo |
                stream
                    tab; nextPutAll: (methodInfo first asString); cr;
                    tab; tab; nextPutAll: 'Comment: '; nextPutAll: (methodInfo second asString); cr.
            ].
            stream cr; cr.
        ].
    ].
    Transcript show: 'Documentation generated for package: ', packageName; cr.
    ^documentation.