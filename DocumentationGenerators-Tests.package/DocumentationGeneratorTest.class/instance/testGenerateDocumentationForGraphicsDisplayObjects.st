tests
testGenerateDocumentationForGraphicsDisplayObjects
    | documentation |
  
    documentation := DocumentationGenerator generateDocumentationForPackage: 'Graphics-Display Objects'.
    self assert: (documentation includesSubstring: 'Class: ColorForm').
    self assert: (documentation includesSubstring: 'Superclass: Form').
    self assert: (documentation includesSubstring: 'Subclasses: None').
    self assert: (documentation includesSubstring: 'Instance Variables: #(#bits #width #height #depth #offset #colors #cachedDepth #cachedColormap)').
    self assert: (documentation includesSubstring: 'Methods:').
    self assert: (documentation includesSubstring: 'colorsUsed').
    self assert: (documentation includesSubstring: 'Comment: Return a list of the colors actually used by this ColorForm.').
    