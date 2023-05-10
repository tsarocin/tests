#include <iostream>
#include <cstdio>
#include <memory>

auto main() -> int
{
    int size=0;
    scanf("%d", &size);
    
    std ::unique_ptr<int[]>array_uni_ptr(new int[size]);
    
    for(int i=0; i<size; ++i)
    {

       array_uni_ptr[i] = i+1;
    }
    for(int i=0; i<size; ++i)
    {
        std :: cout <<"the elements are: ";
        std::cout << array_uni_ptr[i]<<std::endl;
    }
    
    return 0;
}