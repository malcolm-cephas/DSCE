//position of a character ch in the string S or – 1 if S doesn‘t contain ch.
#include <stdio.h>
#include <string.h>

int main() {
    char str[100], ch;
    char *position;

    // Input string and character
    printf("Enter the string: ");
    fgets(str, sizeof(str), stdin);

    printf("Enter the character to find: ");
    scanf("%c", &ch);

    // Use strchr to find the first occurrence of ch in string S
    position = strchr(str, ch);
    
    // Check if character is found
    if (position) {
        // Output the index of the character
        printf("Position of '%c' in string: %d\n", ch, position - str);
    } else {
        printf("-1\n");  // If the character is not found
    }

    return 0;
}