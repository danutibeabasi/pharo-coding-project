instance creation
fromTraditionalMatrix: aMatrix 
    | sparseMatrix |
    sparseMatrix := self new.
    sparseMatrix initialize.
    sparseMatrix rowCount: aMatrix size.
    sparseMatrix columnCount: aMatrix first size.
    sparseMatrix nonZeroElements: Dictionary new.

    aMatrix withIndexDo: [ :row :rowIndex |
        row withIndexDo: [ :element :colIndex |
            element = 0 ifFalse: [
                sparseMatrix nonZeroElements at: (rowIndex @ colIndex) put: element.
            ].
        ].
    ].
    ^sparseMatrix