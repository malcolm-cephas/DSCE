//to count the lines, words and characters in a given text.
#include <stdio.h>

int main() {
     // declare variables
    char str[200];
    int line, word, ch;

    // initialize count variables with zero
    line = word =1; ch = 0;

    // read multiline string
    printf("Enter string terminated with ~ :\n");
    scanf("%[^~]", str);
   
    for(int i=0; str[i]!='\0'; i++)
    {
        // if it is new line then
        // one line and one word completed
        if(str[i]=='\n')
        {
            line++;
            word++;
        }
        else  if(str[i]==' '||str[i]=='\t')
        {
            word++;
        }
        else
        {
            ch++;
        }
    }
    // display count values
    printf("\nCharacter counts = %d\n", ch);
    printf("Word counts = %d\n", word);
    printf("Line counts = %d\n", line);
    return 0;
}