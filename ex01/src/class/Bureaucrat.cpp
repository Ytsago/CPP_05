#include "Bureaucrat.hpp"
#include "Form.hpp"

Bureaucrat::Bureaucrat(const std::string name, int grade) : _name(name), _grade(grade) {
	if (grade < 1)
		throw Bureaucrat::GradeTooHighException();
	if (grade > 150)
		throw Bureaucrat::GradeTooLowException();
};

Bureaucrat::Bureaucrat(const Bureaucrat &other) : _name(other._name), _grade(other._grade) {};

Bureaucrat::~Bureaucrat() {
	//std::cout << "Bureaucrat deleted !" << std::endl;
};

Bureaucrat	&Bureaucrat::operator=(const Bureaucrat &other) {
	if (this != &other) {
		std::cout << "Name couldn't be copied because it's a constante" << std::endl;
		this->_grade = other._grade;
	}
	return (*this);
}

const std::string&	Bureaucrat::getName() const {
	return (this->_name);
}

int	Bureaucrat::getGrade() const {
	return (this->_grade);
}

std::ostream &operator<<(std::ostream &out, const Bureaucrat& el) {
	out << el.getName() << ", bureaucrat grade " << el.getGrade() << ".";
	return (out);
}

void Bureaucrat::promote() {
	if (this->_grade == 1)
		throw Bureaucrat::GradeTooHighException();
	this->_grade--;
}

void Bureaucrat::demote() {
	if (this->_grade == 150)
		throw Bureaucrat::GradeTooLowException();
	this->_grade++;
}

void	Bureaucrat::signForm(Form& form) {
	if (form.getStatus()) {
		std::cout << form.getName() << " is already signed" << std::endl;
		return ;
	}
	try  {
		form.beSigned(*this);
		std::cout << this->_name << " signed " << form.getName() << std::endl;
	}
	catch (std::exception & e) {
		std::cout << this->_name << " couldn't sign " << form.getName() << " because " << e.what() << std::endl;
	}
}

const char *Bureaucrat::GradeTooHighException::what() const throw() {
	return "Grade too high";
}
const char *Bureaucrat::GradeTooLowException::what() const throw() {
	return "Grade too low";
}
