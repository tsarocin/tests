
#include <cstdint>
#include <iostream>

class Student
{
   public:
    int16_t num_of_exams = 0;
    int32_t id_number;
    std::string name;
    Student(std::string par_name, int32_t par_id, int64_t par_bank_account);    //
    void print() const;
    void update_bank_account(int64_t par_bank_account);

   private:
    int64_t bank_account_;
};
Student::Student(const std::string par_name, const int32_t par_id, const int64_t par_bank_account)  //in der main ein string und hier einen string, const kopiert den gesamten Datensatz
    : name{par_name}, bank_account_{par_bank_account}
{
    id_number = par_id;
}
void Student::print() const
{
    std::cout << "name: " << name << std::endl;
    std::cout << "id: " << this->id_number << std::endl;    //zeigt auf sich selber, nicht unbedingt notwenidig
    std::cout << "num of exams: " << num_of_exams << std::endl;
    std::cout << "bank account: " << bank_account_ << std::endl;
}
void Student::update_bank_account(const int64_t par_bank_account)
{
    bank_account_ = par_bank_account;
}
auto main() -> int
{
    {
        Student me(std::string("nico"), 12345678, 8533489684);
        me.update_bank_account(1070000);
        me.print();
    }
}