%{
    #include<stdio.h>
    #include<stdlib.h>
    int vowels=0;
    int consonants=0;
    int digits=0;
    %}
    
    %%
    [aeiouAEIOU] {vowels++;}
    [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {consonants++;}
    [0-9] {digits++;}
    . ;
    %%
    
    int yywrap(void)
    {
        return 1;
    }
    
    main()
    {
        printf("Enter string: ");
        yylex();
        printf("\nVowels: %d\n", vowels);
        printf("Consonants: %d\n", consonants);
        printf("Digits: %d\n", digits);
        return 0;
    }