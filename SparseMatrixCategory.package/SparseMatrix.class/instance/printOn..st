printing
printOn: aStream 
    aStream
        nextPutAll: 'Sparse Matrix: (rows: '; print: rowCount; nextPutAll: ', columns: '; print: columnCount; nextPutAll: ')'; cr.
    nonZeroElements keysAndValuesDo: [ :position :value |
        aStream
            nextPutAll: 'Row: '; print: position x; nextPutAll: ', Column: '; print: position y; nextPutAll: ', Value: '; print: value; cr.
    ].