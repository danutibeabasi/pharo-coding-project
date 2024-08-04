tests
testGenerateDocumentationForValidPackage
    | documentation |
    documentation := DocumentationGenerator generateDocumentationForPackage: 'Graphics-Display Objects'.
    self assert: (documentation includesSubstring: 'Class: ColorArray').