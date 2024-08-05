tests
testDocumentationAccuracyForMultipleInheritanceLevels
    | documentation |
    documentation := DocumentationGenerator generateDocumentationForPackage: 'FreeType'.
    
    "FT2Handle"
    self assert: (documentation includesSubstring: 'Class: FT2Handle').
    self assert: (documentation includesSubstring: 'Superclass: FFIExternalObject').

    "FT2Face"
    self assert: (documentation includesSubstring: 'Class: FT2Face').
    self assert: (documentation includesSubstring: 'Superclass: FT2Handle').
    self assert: (documentation includesSubstring: 'Subclasses: #(#FreeTypeFace)').

    "FreeTypeFace"
    self assert: (documentation includesSubstring: 'Class: FreeTypeFace').
    self assert: (documentation includesSubstring: 'Superclass: FT2Face').
    self assert: (documentation includesSubstring: 'Instance Variables: #(#handle #numFaces #faceIndex #faceFlags #styleFlags #numGlyphs #familyName #styleName #numFixedSizes #availableSizes #numCharmaps #charmaps #bbox #unitsPerEm #ascender #descender #height #maxAdvanceWidth #maxAdvanceHeight #underlinePosition #underlineThickness #glyph #encoding #platformId #encodingId #size #filename #index #fileContentsExternalMemory #hasKerning)').
