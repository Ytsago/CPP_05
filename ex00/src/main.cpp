#include "Bureaucrat.hpp"

int main () {
	try {
		Bureaucrat aaron("Aaron", 8);
		Bureaucrat iris("Iris", 3);

		std::cout << aaron << std::endl;
		std::cout << iris << std::endl;

		std::cout << "\nAaron is demoted and Iris promoted" << std::endl;
		iris.promote();
		aaron.demote();
		std::cout << aaron << "\n" << iris << "\n" << std::endl;
		std::cout << "Aaron got promoted to the same grade as iris\n" << (aaron = iris) << std::endl;
		std::cout << "\nAaron got promoted two times !\n" << std::endl;
		aaron.promote();
		aaron.promote();
		std::cout << aaron << std::endl;
	}
	catch (std::exception & e) {
		std::cout << "Exception caught ! " << e.what() << std::endl;
	}

	try {
		Bureaucrat damien("Damien", 150);
		std::cout << damien << " is demoted !" << std::endl;
		damien.demote();
	}
	catch (std::exception & e) {
		std::cout << "Exception caught ! " << e.what() << std::endl;
	}
	return (0);
}
