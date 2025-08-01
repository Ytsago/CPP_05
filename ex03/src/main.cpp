#include "Bureaucrat.hpp"
#include "Intern.hpp"
#include <cstdlib>

int main () {
	srand(time(NULL));
	try {
		Bureaucrat	David("David", 145);
		Bureaucrat	Julian("Julian", 137);
		Bureaucrat	Iris("Iris", 45);
		Bureaucrat	Mona("Mona", 25);
		Bureaucrat	Boss("Boss", 5);
		Intern		someRandomIntern;

		AForm	*tree = someRandomIntern.makeForm("shrubbery creation", "home");
		AForm	*robot = someRandomIntern.makeForm("robotomy request", "bender");
		AForm	*pres = someRandomIntern.makeForm("presidential pardon", "Homer J. Simpson");

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
