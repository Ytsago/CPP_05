#include "Intern.hpp"
#include "RobotomyRequestForm.hpp"
#include "PresidentialPardonForm.hpp"
#include "ShrubberyCreationForm.hpp"

Intern::Intern() {}

Intern::Intern(const Intern& other) {(void) other;}

Intern &Intern::operator=(const Intern& other) {
	if (this != &other) {
		(void) other;	
	}
	return (*this);
}

AForm*	Intern::makeForm(std::string name, std::string target) const {
	std::string	forms[] = {"robotomy request", "shrubbery creation", "presidential pardon"};
	size_t i = 0;
	AForm*	newForm;

	for (i = 0; i < sizeof(forms) / sizeof(std::string); i++) {
		if (name == forms[i])
			break ;
	}
	switch (i) {
		case 0:
			newForm = new RobotomyRequestForm(target);
			break;
		case 1:
			newForm = new ShrubberyCreationForm(target);
			break;
		case 2:
			newForm = new PresidentialPardonForm(target);
			break;
		default:
			throw NoFormException();
	}
	std::cout << "Intern creates " << newForm->getName() << std::endl;
	return newForm;
}

const char*	Intern::NoFormException::what() const throw() {
	return "there is no such form";
}

Intern::~Intern() {};
