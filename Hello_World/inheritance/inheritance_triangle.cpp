

#include <iostream>
class Shape
{
   public:  // C++ Access Specifiers
    void set_width(int8_t width_in)
    {
        width_ = width_in;
    }
    void set_height(int8_t height_in)
    {
        height_ = height_in;
    }
    void set_price(int8_t price_in)
    {
        price_ = price_in;
    }

   protected:  // C++ Access Specifiers
    int8_t width_;
    int8_t height_;
    int8_t price_;
    
};
class paintCost : public Shape
{
public:
    auto get_cost() -> double 
    {
        return (rect.get_area * price_);
    }
};

class triangle : public Shape
{
    public:
    auto get_area() ->float
    {
        return (0.5*width_ * height_);
    }
};
class cost : public triangle, public paintCost
{
    public:
    auto get_price() ->float
    {
        return (0.5*width_ * height_*price_);
        
    }
};


auto main() -> int
{
    triangle rect;
    cost rects;
    rect.set_width(5);
    rect.set_height(7);
    rect.set_price(70);
    std::cout<<"Total area: "<<rect.get_area() <<"€"<<std::endl;
    return 0;
}