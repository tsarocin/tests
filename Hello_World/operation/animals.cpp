#include <iostream>
#include <stdio>

class Animal
{
    
    
};
class Bird;
class Cat;
class Bird : public Animal
{
    public:
        void operator+(const Cat &)
        {
            std::cout <<"Cats are fine!" <<std::endl;
        }
        void operator+(const Bird&)
        {
            std::cout<<"Cat eats the bird !"<<std::endl;
        }
};
class cat
{
    public:
        void operator+(const Cat &)
        {
            std::cout <<"Cat eats Bird!" <<std::endl;
        }
        void operator+(const Bird&)
        {
            std::cout<<"Birds are fine !"<<std::endl;
        }
};

auto main() -> int
{
    Cat 
}