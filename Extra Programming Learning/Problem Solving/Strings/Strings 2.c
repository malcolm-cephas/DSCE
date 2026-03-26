//delete n Characters from a given position in a given string.
#include <stdio.h>
#include <string.h>

int main() {
    char str[20],finalStr[20];
    int position,n;

    // Input a string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);  

    // Input the position
    printf("Enter the position from where you want to delete: ");
    scanf("%d", &position);

    // Input the no.of characters to delete    
    printf("Enter the number of characters to delete: ");
    scanf("%d", &n);

    // Check if the position is valid
    int strLen = strlen(str);
    if (position < 0 || position > strLen) {
        printf("Invalid position.\n");
        return 1;
    }
    strncpy(finalStr,str,position);   // Copy string up to position
    finalStr[position] = '\0';     // Important null terminate
    strcat(finalStr,str+position+n);  // Concatenate remaining characters
  
    // Print the modified string
    printf("Modified string: %s\n", finalStr);

    return 0;
}