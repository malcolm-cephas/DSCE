// Multiplication of Two Matrices 

#include <stdio.h>

// Function to perform matrix multiplication
void multiplyMatrices(int A[10][10], int B[10][10], int result[10][10], int rowA, int colA, int rowB, int colB) {
    int i,j,k;
    for (i = 0; i < rowA; i++) {
        for (j = 0; j < colB; j++) {
            result[i][j] = 0;		// Initializing the result matrix with 0
            for (k = 0; k < colA; k++) {
                result[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

// Function to input matrix elements
void inputMatrix(int matrix[10][10], int rows, int cols) {
    int i,j;
    printf("Enter elements of the matrix (%dx%d):\n", rows, cols);
    for (i = 0; i < rows; i++) {
        for (j = 0; j < cols; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }
}

// Function to display a matrix
void displayMatrix(int matrix[10][10], int rows, int cols) {
    int i,j;
    for (i = 0; i < rows; i++) {
        for (j = 0; j < cols; j++) {
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int A[10][10], B[10][10], result[10][10];
    int rowA, colA, rowB, colB;

    // Input matrix dimensions
    printf("Enter the number of rows and columns for Matrix A: ");
    scanf("%d %d", &rowA, &colA);

    printf("Enter the number of rows and columns for Matrix B: ");
    scanf("%d %d", &rowB, &colB);

    // Check if multiplication is possible (columns of A must be equal to rows of B)
    if (colA != rowB) {
        printf("Matrix multiplication is not possible. The number of columns of A must be equal to the number of rows of B.\n");
        return 1; // Exit the program if multiplication is not possible
    }

    // Input matrices A and B
    printf("Input matrix A:\n");
    inputMatrix(A, rowA, colA);

    printf("Input matrix B:\n");
    inputMatrix(B, rowB, colB);

    // Perform matrix multiplication
    multiplyMatrices(A, B, result, rowA, colA, rowB, colB);

    // Display the result
    printf("\nMatrix A:\n");
    displayMatrix(A, rowA, colA);

    printf("\nMatrix B:\n");
    displayMatrix(B, rowB, colB);

    printf("\nResultant Matrix (A * B):\n");
    displayMatrix(result, rowA, colB);

    return 0;
}