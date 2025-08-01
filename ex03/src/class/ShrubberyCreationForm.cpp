#include "ShrubberyCreationForm.hpp"

ShrubberyCreationForm::ShrubberyCreationForm(std::string target) : AForm("Shrubbery Form", 145, 137, target) {}

ShrubberyCreationForm::ShrubberyCreationForm(const ShrubberyCreationForm& other) : AForm(other) {}

ShrubberyCreationForm &ShrubberyCreationForm::operator=(const ShrubberyCreationForm& other) {
	if (this != &other) {
		AForm::operator=(other);
	}
	return (*this);
}

void	PrintTree(std::ostream& out) {
	out << "                     .o00o\n"
	<< "                   o000000oo\n"
	<< "                  00000000000o\n"
	<< "                 00000000000000\n"
	<< "              oooooo  00000000  o88o\n"
	<< "           ooOOOOOOOoo  ```''  888888\n"
	<< "         OOOOOOOOOOOO'.qQQQQq. `8888'\n"
	<< "        oOOOOOOOOOO'.QQQQQQQQQQ/.88'\n"
	<< "        OOOOOOOOOO'.QQQQQQQQQQ/ /q\n"
	<< "         OOOOOOOOO QQQQQQQQQQ/ /QQ\n"
	<< "           OOOOOOOOO `QQQQQQ/ /QQ'\n"
	<< "             OO:F_P:O `QQQ/  /Q'\n"
	<< "                \\\\. \\ |  // |\n"
	<< "                d\\ \\\\\\|_////\n"
	<< "                qP| \\\\ _' `|Ob\n"
	<< "                   \\  / \\  \\Op\n"
	<< "                   |  | O| |\n"
	<< "           _       /\\. \\_/ /\\\n"
	<< "            `---__/|_\\\\   //|  __\n"
	<< "                  `-'  `-'`-'-'";
}
#ifndef NB_TREE
# define NB_TREE 5
#endif

void	ShrubberyCreationForm::executeAction() const {
	std::ofstream	outFile((this->getTarget() + "_shrubbery").c_str());

	if (!outFile)
		throw FileErrorException();
	for (int i = 0; i < NB_TREE; i++) {
		PrintTree(outFile);
		outFile << std::endl << std::endl;
	}
}

const char* ShrubberyCreationForm::FileErrorException::what() const throw() {
	return "couldn't open/create file";
}

ShrubberyCreationForm::~ShrubberyCreationForm() {}
