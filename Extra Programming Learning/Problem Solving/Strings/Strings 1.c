//insert a sub-string into a given main string from a given position.
#include <stdio.h>
#include <string.h>

int main() {
    char mainStr[50], subStr[50],finalStr[100];
    int position;

    // Input the main string
    printf("Enter the main string: ");
     fgets(mainStr, sizeof(mainStr), stdin);  
    
    // Input the substring
    printf("Enter the substring: ");
    fgets(subStr, sizeof(subStr), stdin); 
    subStr[strcspn(subStr, "\n")] = '\0';  // Remove newline  

    // Input the position
    printf("Enter the position to insert the substring: ");
    scanf("%d", &position);

    // Check if the position is valid
    int mainLen = strlen(mainStr);
    if (position < 0 || position > mainLen) {
        printf("Invalid position.\n");
        return 1;
    }
    
    strncpy(finalStr,mainStr,position);  // Copy string up to position
    strcat(finalStr,subStr);    // Insert substring
    strcat(finalStr,mainStr+position);  // Append remaining part
  
    // Print the result string
    printf("Modified string: %s\n", finalStr);

    return 0;
}