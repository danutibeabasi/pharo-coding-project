test
testDocumentationForClassWithoutComments
    | documentation |
    documentation := DocumentationGenerator generateDocumentationForPackage: 'Zinc-Character-Encoding-Core'.
    self assert: (documentation includesSubstring: 'Class: ZnBufferedReadStream').
    self assert: (documentation includesSubstring: 'next:').
    self assert: (documentation includesSubstring: 'Comment: No comment').
