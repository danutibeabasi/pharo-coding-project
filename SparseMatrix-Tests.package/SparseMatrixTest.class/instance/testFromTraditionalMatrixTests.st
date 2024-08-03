tests
testFromTraditionalMatrixTests
    | sparseMatrix |
    sparseMatrix := SparseMatrix fromTraditionalMatrix: traditionalMatrix.
    self assert: sparseMatrix nonZeroElements equals: expectedSparseMatrix.