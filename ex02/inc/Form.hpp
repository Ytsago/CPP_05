#ifndef FORM_HPP
 #define FORM_HPP

#include "Bureaucrat.hpp"

class Form {
	public:
		Form(const std::string name, const int signGrade, const int execGrade);
		~Form();
		Form(const Form& other);
		Form &operator=(const Form& other);

		void	beSigned(Bureaucrat& employee);

		const std::string&	getName() const;
		const int&	getExecGrade() const;
		const int&	getSignGrade() const;
		bool&		getStatus();
	
		class GradeTooHighException : public std::exception {
			virtual const char *what() const throw();
		};
		class GradeTooLowException : public std::exception {
			virtual const char *what() const throw();
		};
	private:
		const std::string	_name;
		bool				_signed;
		const int			_signGrade;
		const int			_execGrade;
};

std::ostream &operator<<(std::ostream &out, Form el);

#endif
