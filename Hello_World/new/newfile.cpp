#include <iostream>
#include <cstdio>


auto main() -> int
{
    int size=0;
    scanf("%d", &size);
    
    int* single_ptr = new int[size];
    
    
    for(int i=0; i<size; ++i)
    {

        single_ptr[i] = i+1;
    }
    for(int i=0; i<size; ++i)
    {
        std :: cout <<"the elements are: ";
        std::cout << single_ptr[i]<<std::endl;
    }
    delete[] single_ptr;
    return 0;
}