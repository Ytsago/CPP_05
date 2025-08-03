#include "Bureaucrat.hpp"
#include "Intern.hpp"
#include <cstdlib>

int main () {
	srand(time(NULL));

	Intern	someRandomIntern;
	AForm	*tree = NULL;
	AForm	*robot = NULL; 
	AForm	*pres = NULL;

	try {
		pres = someRandomIntern.makeForm("presidential pardon", "Homer J. Simpson");
		robot = someRandomIntern.makeForm("robotomy request", "bender");
		tree = someRandomIntern.makeForm("shrubbery creation", "root/home");
		
		Bureaucrat	David("David", 145);
		Bureaucrat	Julian("Julian", 137);
		Bureaucrat	Iris("Iris", 45);
		Bureaucrat	Mona("Mona", 25);
		Bureaucrat	Boss("Boss", 5);

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

		AForm	*badForm = someRandomIntern.makeForm("Tax evasion", "Bayrou");

		Boss.signForm(*badForm);
	}
	catch (std::exception & e) {
		std::cout << "Exception caught ! " << e.what() << std::endl;
	}
	delete tree;
	delete robot;
	delete pres;
	return (0);
}
