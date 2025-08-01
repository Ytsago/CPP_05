#include "PresidentialPardonForm.hpp"

PresidentialPardonForm::PresidentialPardonForm(std::string target) : AForm("Presidential form", 25, 5, target) {}

PresidentialPardonForm::PresidentialPardonForm(const PresidentialPardonForm& other) : AForm(other) {}

PresidentialPardonForm &PresidentialPardonForm::operator=(const PresidentialPardonForm& other) {
	if (this != &other) {
		AForm::operator=(other);
	}
	return (*this);
}

void	PresidentialPardonForm::executeAction() const {
	std::cout << this->getTarget() << " has been pardoned by Zaphod Beeblebrox." << std::endl;
}

PresidentialPardonForm::~PresidentialPardonForm() {};
