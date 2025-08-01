#ifndef AFORM_HPP
 #define AFORM_HPP

#include "Bureaucrat.hpp"

class AForm {
	public:
		AForm(const std::string name, const int signGrade, const int execGrade, std::string target);
		virtual ~AForm();
		AForm(const AForm& other);
		AForm &operator=(const AForm& other);

		void	beSigned(Bureaucrat& employee);
		void	execute(Bureaucrat const & executor) const;
		virtual void	executeAction() const = 0;

		const std::string&	getName() const;
		const std::string&	getTarget() const;
		const int&	getExecGrade() const;
		const int&	getSignGrade() const;
		bool&		getStatus();
	
		class GradeTooHighException : public std::exception {
			virtual const char *what() const throw();
		};
		class GradeTooLowException : public std::exception {
			virtual const char *what() const throw();
		};
		class FormNotSignedException : public std::exception {
			virtual const char *what() const throw();
		};
	private:
		const std::string	_name;
		const std::string	_target;
		bool				_signed;
		const int			_signGrade;
		const int			_execGrade;
};

std::ostream &operator<<(std::ostream &out, AForm& el);

#endif
