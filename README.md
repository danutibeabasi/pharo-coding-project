# pharo-coding-project

## Overview

This repository contains two main packages developed in Pharo:
1. **SparseMatrixConversion**: Tool for converting between sparse and traditional matrix representations.
2. **DocumentationGenerator**: Tool for generating documentation for Pharo packages, similar to JavaDoc.

## Cloning and Using the Repository in Pharo

1. Open Pharo.
2. Navigate to the Repository Browser.
3. Add a new repository and select "Clone from remote repository."
4. Enter the GitHub URL `https://github.com/danutibeabasi/pharo-coding-project`.
5. Load the packages as needed.

## Packages and Structure

### SparseMatrixConversion

This package provides functionality for converting matrices between sparse and traditional representations. It includes methods for both converting a traditional matrix to a sparse matrix and vice versa.

#### Classes
- `SparseMatrix`: Represents a sparse matrix.
- `SparseMatrixTest`: Test cases for `SparseMatrix` functionality.

### DocumentationGenerator

This package provides tools to generate documentation for Pharo classes and packages, detailing superclasses, subclasses, instance variables, and methods with comments.

#### Classes
- `DocumentationGenerator`: Generates documentation for a given package.
- `DocumentationGeneratorTest`: Test cases for `DocumentationGenerator` functionality.

## Running Tests

To run tests for both packages, you can use the built-in test runner in Pharo:

1. Open the Dr Test from the Browse menu.
2. Select `SparseMatrix-Tests` and `DocumentationGenerators-Tests`.
3. Run the tests and ensure all pass.

## Usage


### SparseMatrixConversion

#### Example: Converting Traditional to Sparse Matrix

```smalltalk
| traditionalMatrix sparseMatrix |
traditionalMatrix := #(
    (0 0 3 0)
    (0 0 0 5)
    (1 0 0 0)
    (0 0 0 8)
).
sparseMatrix := SparseMatrix fromTraditionalMatrix: traditionalMatrix.
```

#### Expected Output in Transcript:

```smalltalk
Sparse Matrix: (rows: 4, columns: 4)
Row: 1, Column: 3, Value: 3
Row: 2, Column: 4, Value: 5
Row: 3, Column: 1, Value: 1
Row: 4, Column: 4, Value: 8
```

#### Example: Converting Sparse to Traditional Matrix

```smalltalk
| sparseMatrix traditionalMatrix |
sparseMatrix := SparseMatrix fromTraditionalMatrix: #(
    (0 0 3 0)
    (0 0 0 5)
    (1 0 0 0)
    (0 0 0 8)
).
traditionalMatrix := sparseMatrix toTraditionalMatrix.
```
#### Expected Output in Transcript:

```smalltalk
#(0 0 3 0)
#(0 0 0 5)
#(1 0 0 0)
#(0 0 0 8)
```


### DocumentationGenerator

#### Example: Generating Documentation for a Package

```smalltalk
| documentation |
documentation := DocumentationGenerator generateDocumentationForPackage: 'YourPackageNameHere'.  <-- "Replace 'YourPackageNameHere' with the actual package name"
Transcript show: documentation.
```

### Using the Playground

To experiment with the examples above, do the following:

1. Open Pharo.
2. Go to the Playground by selecting `Browse` -> `Playground` from the menu.
3. Copy and paste the example code into the Playground.
4. Select the code and press `Do it` (usually by pressing `Ctrl+D` or right-clicking and selecting `Do it`).

This will execute the code, and you can see the results in the Transcript.

### Viewing the Transcript

1. Open the Transcript by selecting `Browse` -> `Transcript` from the menu.
2. The expected output will be displayed here when you run the examples.


## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## License

MIT License


Copyright (c) 2024 Utibeabasi DAN

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

