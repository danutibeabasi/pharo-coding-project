I represent a sparse matrix that efficiently stores non-zero elements and supports conversion to and from traditional matrix formats.

Responsibility:
- I store and manage non-zero elements of a matrix using an efficient sparse representation.
- I provide methods to convert a sparse matrix to a traditional matrix and vice versa.
- I handle matrix dimensions and ensure accurate indexing during conversion.

Collaborators:
- I interact with the Array class to create and manipulate traditional 2D matrices.
- I use the Dictionary class to store positions and values of non-zero elements.

Public API and Key Messages:
- fromTraditionalMatrix: aMatrix
- toTraditionalMatrix
- printOn: aStream
- rowCount, columnCount, nonZeroElements, and their respective setter methods

How to create instances:
SparseMatrix fromTraditionalMatrix: #(#(1 0 0) #(0 0 5) #(4 0 0) #(0 7 0)).

Internal Representation and Key Implementation Points:
Instance Variables:
	columnCount:		<Object> - The number of columns in the matrix.
	nonZeroElements:		<Object> - A Dictionary storing positions (as Points) and values of non-zero elements.
	rowCount:		<Object> - The number of rows in the matrix.

Implementation Points:
- I initialize with zero rows and columns, and an empty Dictionary for non-zero elements.
- My class-side method 'fromTraditionalMatrix:' converts a 2D array into a sparse matrix by storing non-zero elements' positions and values.
- The 'toTraditionalMatrix' instance method converts the sparse matrix back to a traditional 2D array and logs each step to the Transcript.
- The 'printOn:' method provides a readable representation of the sparse matrix, listing each non-zero element's position and value."