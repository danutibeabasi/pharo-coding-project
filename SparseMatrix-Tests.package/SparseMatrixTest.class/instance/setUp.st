running
setUp
    super setUp.
    
    "Initialize common test data"
    traditionalMatrix := #(
        (0 5 0 0)
        (0 0 0 12)
        (7 0 0 0)
        (0 0 9 0)
    ).
    expectedSparseMatrix := {
        (1 @ 2 -> 5).
        (2 @ 4 -> 12).
        (3 @ 1 -> 7).
        (4 @ 3 -> 9).
    } asDictionary.