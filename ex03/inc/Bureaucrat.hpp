#ifndef BUREAUCRAT_HPP
# define BUREAUCRAT_HPP

# include <iostream>
# include <exception>
class AForm;

class Bureaucrat {
	public:
		Bureaucrat(std::string name, int grade);
		~Bureaucrat();
		Bureaucrat(const Bureaucrat &other);
		Bureaucrat &operator=(const Bureaucrat &other);

		int		getGrade() const;
		void	promote();
		void	demote();
		void	signForm(AForm& form);
		void	executeForm(AForm const & form);

		const std::string& getName() const;

		class GradeTooHighException : public std::exception {
				virtual const char *what() const throw();
		};
		class GradeTooLowException : public std::exception {
				virtual const char *what() const throw();
		};
	private:
		const std::string	_name;
		int					_grade;
};

std::ostream &operator<<(std::ostream &out, const Bureaucrat& el);
#endif
