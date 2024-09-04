#include <stdio.h>

int main()
{
    int n, Num = 0, remainder, originalNum;
    printf("Enter an integer: ");
    scanf("%d", &n);
    originalNum = n;
    // reverse the number
    while (num != 0)
        {
        remainder = n % 10;
        Num = Num * 10 + remainder;
        n /= 10;
    }
    // check if the original number and reversed number are the same
    if (originalNum == reversedNum) {
        printf("%d is a palindrome.\n", originalNum);
    } else {
        printf("%d is not a palindrome.\n", originalNum);
    }

    return 0;
}
