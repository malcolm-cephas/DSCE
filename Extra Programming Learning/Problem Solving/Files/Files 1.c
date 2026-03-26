//copies one file to another, replacing all lowercase characters with their uppercase equivalents.
#include <stdio.h>
#include <ctype.h>   

int main() {
    FILE *src, *dest;
    char ch;

    // Open source file
    src = fopen("file1.txt", "r");
    if (src == NULL) {
        printf("Error: Cannot open source file.\n");
        return 1;
    }

    // Open destination file
    dest = fopen("file2.txt", "w");
    if (dest == NULL) {
        printf("Error: Cannot create destination file.\n");
        fclose(src);
        return 1;
    }

    // Copy characters with conversion
    while ((ch = fgetc(src)) != EOF) {
        fputc(toupper(ch), dest);
    }

    printf("File copied successfully with uppercase conversion.\n");

    // Close files
    fclose(src);
    fclose(dest);

    return 0;
}