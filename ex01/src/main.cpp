#include "Bureaucrat.hpp"
#include "Form.hpp"
int main () {
	try {
		Bureaucrat David("David", 15);
		Bureaucrat Julian("Julian", 52);
		Form	Contract("Location", 25, 45);
		Form	Contract2("Eviction", 12, 25);

		Contract2 = Contract;

		std::cout << Contract << std::endl << David << std::endl;
		Julian.signForm(Contract);
		David.signForm(Contract);
		Julian.signForm(Contract);
		std::cout << Contract << std::endl << Contract2 << std::endl;
		Contract2 = Contract;
		Julian.signForm(Contract2);
		std::cout << Contract2 << std::endl;
	}
	catch (std::exception & e) {
		std::cout << "Exception caught ! " << e.what() << std::endl;
	}
	return (0);
}
