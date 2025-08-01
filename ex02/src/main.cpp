#include "Bureaucrat.hpp"
#include "PresidentialPardonForm.hpp"
#include "RobotomyRequestForm.hpp"
#include "ShrubberyCreationForm.hpp"

int main () {
	srand(time(NULL));
	try {
		Bureaucrat David("David", 145);
		Bureaucrat Julian("Julian", 137);
		Bureaucrat Iris("Iris", 45);
		Bureaucrat Mona("Mona", 25);
		Bureaucrat Boss("Boss", 5);

		AForm	*tree = new ShrubberyCreationForm("Home");
		AForm	*robot = new RobotomyRequestForm("Bender");
		AForm	*pres = new PresidentialPardonForm("Homer Simpson");

		David.signForm(*tree);
		David.executeForm(*tree);

		Julian.executeForm(*tree);
		Julian.executeForm(*tree);

		Julian.signForm(*robot);
		Iris.signForm(*robot);
		Iris.executeForm(*robot);

		Mona.signForm(*pres);
		Mona.executeForm(*pres);
		Boss.executeForm(*pres);

		delete tree;
		delete robot;
		delete pres;
	}
	catch (std::exception & e) {
		std::cout << "Exception caught ! " << e.what() << std::endl;
	}
	return (0);
}
