#ifndef INTERN_HPP 
# define INTERN_HPP

#include "AForm.hpp"

class Intern {
	public:
		Intern();
		~Intern();
		Intern(const Intern& other);
		Intern &operator=(const Intern& other);
		AForm*	makeForm(std::string name, std::string target) const;
	
	class NoFormException : public std::exception {
		virtual const char* what() const throw();
	};
};

#endif
