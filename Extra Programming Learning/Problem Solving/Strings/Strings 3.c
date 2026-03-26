//to find the given string is a palindrome or not.
#include <stdio.h>
#include <string.h>

int main() {
    char str[20];
    int i,j;
    int flag = 0;
    
    printf("Enter a string: ");
    scanf("%s", str);
     // Calculate the string length, -1 for '\0' 
    j=strlen(str)-1;
    // Compare characters from the start and end of the string
    // and stop if a mismatch is found or the middle of the string is reached.
    for(i=0;i<=j;i++,j--)
    {
        if(str[i]!=str[j])
        {
            flag=1;
            break;
        }
    }
     if (flag) {
        printf("%s is not a palindrome\n", str);
    } else {
        printf("%s is a palindrome\n", str);
    }
}