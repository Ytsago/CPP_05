#include "RobotomyRequestForm.hpp"
#include <cstdlib>

RobotomyRequestForm::RobotomyRequestForm(std::string target) : AForm("Robotomy form", 72, 45, target) {}

RobotomyRequestForm::RobotomyRequestForm(const RobotomyRequestForm& other) : AForm(other) {}

RobotomyRequestForm &RobotomyRequestForm::operator=(const RobotomyRequestForm& other) {
	if (this != &other) {
		AForm::operator=(other);
	}
	return (*this);
}

void	RobotomyRequestForm::executeAction() const {
	std::cout << "Makes some drilling noises." << std::endl;
	if (rand() % 2 == 1)
		std::cout << this->getTarget() << " has been robotomized" << std::endl;
	else
		std::cout << "Robotomy failed !" << std::endl;
}

RobotomyRequestForm::~RobotomyRequestForm() {};
