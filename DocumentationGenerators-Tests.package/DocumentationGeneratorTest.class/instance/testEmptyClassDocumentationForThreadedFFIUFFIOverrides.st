tests
testEmptyClassDocumentationForThreadedFFIUFFIOverrides
    | documentation |
    documentation := DocumentationGenerator generateDocumentationForPackage: 'ThreadedFFI-UFFI-Overrides'.
    self assert: documentation isEmpty.
