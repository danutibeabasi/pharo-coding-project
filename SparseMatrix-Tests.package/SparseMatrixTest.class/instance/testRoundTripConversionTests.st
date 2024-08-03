tests
testRoundTripConversionTests
    | sparseMatrix roundTrippedMatrix |
    sparseMatrix := SparseMatrix fromTraditionalMatrix: traditionalMatrix.
    roundTrippedMatrix := sparseMatrix toTraditionalMatrix.

    self assert: roundTrippedMatrix equals: traditionalMatrix.