#include "Form.hpp"

Form::Form(const std::string name, const int signGrade, const int execGrade) : _name(name), _signed(false), _signGrade(signGrade), _execGrade(execGrade) {
	if (execGrade < 1 || signGrade < 1)
		throw Form::GradeTooHighException();
	if (execGrade > 150 || signGrade > 150)
		throw Form::GradeTooLowException();
}

Form::Form(const Form& other) : _name(other._name), _signed(other._signed), _signGrade(other._signGrade), _execGrade(other._execGrade) {};

Form &Form::operator=(const Form& other) {
	std::cout << "Only the form state can be copied !" << std::endl;
	if (this != &other)
		this->_signed = other._signed;
	return (*this);
}

Form::~Form() {

}

void	Form::beSigned(Bureaucrat& employee) {
	if (this->_signGrade < employee.getGrade())
		throw Form::GradeTooLowException();
	this->_signed = true;
}

const std::string& Form::getName() const {return this->_name;}
const int&	Form::getExecGrade() const {return this->_execGrade;}
const int&	Form::getSignGrade() const {return this->_signGrade;}
bool&	Form::getStatus() {return this->_signed;}

std::ostream	&operator<<(std::ostream &out, Form el) {
	out << el.getName() << " is " << (el.getStatus() ?  "signed" : "not signed") << ", it required a grade "
	<< el.getSignGrade() << " to sign it, and a grade " << el.getExecGrade() << " to execute it.";
	return (out);
}

const char	*Form::GradeTooHighException::what() const throw() {
	return "grade too high";
}

const char	*Form::GradeTooLowException::what() const throw() {
	return "grade too low";
}
