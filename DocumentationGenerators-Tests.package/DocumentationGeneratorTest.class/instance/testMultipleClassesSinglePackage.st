tests
testMultipleClassesSinglePackage
    | documentation |
    documentation := DocumentationGenerator generateDocumentationForPackage: 'FreeType'.
    

    self assert: (documentation includesSubstring: 'Class: FreeTypeFace').
    self assert: (documentation includesSubstring: 'Superclass: FT2Face').
    self assert: (documentation includesSubstring: 'Instance Variables:').
    self assert: (documentation includesSubstring: 'hasKerning').


    self assert: (documentation includesSubstring: 'Class: FTGlyphSlotRec').
    self assert: (documentation includesSubstring: 'Superclass: FFIExternalStructure').
    self assert: (documentation includesSubstring: 'Methods:').
    self assert: (documentation includesSubstring: 'bitmap_left:').
    self assert: (documentation includesSubstring: 'bitmap_top:').
