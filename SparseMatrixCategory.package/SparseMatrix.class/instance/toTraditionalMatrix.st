convertion
toTraditionalMatrix 
    | traditionalMatrix |
    traditionalMatrix := Array new: rowCount.
    
    1 to: rowCount do: [ :i |
        traditionalMatrix at: i put: (Array new: columnCount withAll: 0).
    ].
    
    nonZeroElements keysAndValuesDo: [ :position :value |
        | row column |
        row := position x.
        column := position y.
        
        ((row > 0 and: [ row <= rowCount ]) and: [ column > 0 and: [ column <= columnCount ]]) ifTrue: [
            (traditionalMatrix at: row) at: column put: value.
        ].
    ].
    ^traditionalMatrix