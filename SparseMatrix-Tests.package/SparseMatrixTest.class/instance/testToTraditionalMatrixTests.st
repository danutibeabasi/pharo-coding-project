tests
testToTraditionalMatrixTests
    | sparseMatrix convertedMatrix expectedMatrix |
    sparseMatrix := SparseMatrix fromTraditionalMatrix: traditionalMatrix.
    convertedMatrix := sparseMatrix toTraditionalMatrix.
    expectedMatrix := #(
        (0 5 0 0)
        (0 0 0 12)
        (7 0 0 0)
        (0 0 9 0)
    ).

    self assert: convertedMatrix equals: expectedMatrix.