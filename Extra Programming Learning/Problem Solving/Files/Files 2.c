//to merge two files into a third file.
#include <stdio.h>
#include <ctype.h>   

int main() {
    FILE *file1, *file2, *file3;
    char ch;

    // Open first file
    file1 = fopen("file1.txt", "r");
    if (file1 == NULL) {
        printf("Error opening first file.\n");
        return 1;
    }

    // Open second file
    file2 = fopen("file2.txt", "r");
    if (file2 == NULL) {
        printf("Error opening second file.\n");
        fclose(file1);
        return 1;
    }

    // Open third file (output)
    file3 = fopen("file3.txt", "w");
    if (file3 == NULL) {
        printf("Error creating destination file.\n");
        fclose(file1);
        fclose(file2);
        return 1;
    }

    // Copy contents of first file
    while ((ch = fgetc(file1)) != EOF) {
        fputc(ch, file3);
    }

    // Copy contents of second file
    while ((ch = fgetc(file2)) != EOF) {
        fputc(ch, file3);
    }

    printf("Files merged successfully.");

    // Close all files
    fclose(file1);
    fclose(file2);
    fclose(file3);

    return 0;
}