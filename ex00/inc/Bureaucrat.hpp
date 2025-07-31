#ifndef BUREAUCRAT_HPP
# define BUREAUCRAT_HPP

# include <iostream>

class Bureaucrat {
	public:
		class GradeTooHighException : public std::exception {
			public:
				virtual const char *what() const throw();
	};
		class GradeTooLowException : public std::exception {
			public:
				virtual const char *what() const throw();
	};
		Bureaucrat(std::string name, int grade);
		~Bureaucrat();
		Bureaucrat(const Bureaucrat &other);
		Bureaucrat &operator=(const Bureaucrat &other);
		const std::string& getName() const;
		int	getGrade() const;
		void	promote();
		void	demote();
	private:
		const std::string	_name;
		int					_grade;
};

std::ostream &operator<<(std::ostream &out, const Bureaucrat& el);
#endif
