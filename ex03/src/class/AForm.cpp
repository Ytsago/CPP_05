#include "AForm.hpp"

AForm::AForm(const std::string name, const int signGrade, const int execGrade, std::string target) 
: _name(name), _target(target), _signed(false), _signGrade(signGrade), _execGrade(execGrade) {
	if (execGrade < 1 || signGrade < 1)
		throw AForm::GradeTooHighException();
	if (execGrade > 150 || signGrade > 150)
		throw AForm::GradeTooLowException();
}

AForm::AForm(const AForm& other) 
: _name(other._name), _target(other._target), _signed(other._signed), _signGrade(other._signGrade), _execGrade(other._execGrade) {};

AForm &AForm::operator=(const AForm& other) {
	std::cout << "Only the form state can be copied !" << std::endl;
	if (this != &other)
		this->_signed = other._signed;
	return (*this);
}

AForm::~AForm() {

}

void	AForm::beSigned(Bureaucrat& employee) {
	if (this->_signGrade < employee.getGrade())
		throw AForm::GradeTooLowException();
	this->_signed = true;
}

void	AForm::execute(Bureaucrat const & executor) const {
	if (!this->_signed)
		throw FormNotSignedException();
	if (this->_execGrade < executor.getGrade())
		throw GradeTooLowException();
	this->executeAction();
}

const std::string& AForm::getName() const {return this->_name;}
const std::string& AForm::getTarget() const {return this->_target;}
const int&	AForm::getExecGrade() const {return this->_execGrade;}
const int&	AForm::getSignGrade() const {return this->_signGrade;}
bool&	AForm::getStatus() {return this->_signed;}

std::ostream	&operator<<(std::ostream &out, AForm& el) {
	out << el.getName() << " is " << (el.getStatus() ?  "signed" : "not signed") << ", it required a grade "
	<< el.getSignGrade() << " to sign it, and a grade " << el.getExecGrade() << " to execute it.\nIt's target is " << el.getTarget();
	return (out);
}

const char	*AForm::GradeTooHighException::what() const throw() {
	return "grade too high";
}

const char	*AForm::GradeTooLowException::what() const throw() {
	return "grade too low";
}

const char *AForm::FormNotSignedException::what() const throw() {
	return "form not signed";
}
