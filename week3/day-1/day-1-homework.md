#TIY Database

You have been hired to create an app to manage information about employees and students. Create an application that can add, search, and delete employees and students from a master list.

## Explorer Mode

- [ ] The main loop of the application should show a menu of options to the user to include at least: `Add a person`, `Search for a person`, `Delete a person`
  - _HINT_: Show the list of options and allow the user to enter `A` for `Add`, `S` for `Search` and `D` for `Delete`
- [ ] When adding a person, prompt if the person is an employee or student and create the right type of person
  - [ ] For an employee track the following information: `Name, Phone number, Address, Position, Salary, Date Hired, Slack Account, Github Account`
  - [ ] For a student track the following information: `Name, Phone number, Address, Slack Account, Github Account`
- [ ] When searching for a person, prompt for the name and search for an exact match
  - [ ] If the person is found, show all their relevant information.
  - [ ] Show the information in a nice presentation.
  - [ ] Employees should show, via a _method_, `Has been a PPPP for at least YYYY years` where `PPPP` is their position and `YYYY` is how many years they have held that position.
  - [ ] If a person is not found, inform the user
- [ ] When deleting a person, prompt for the name and search for an exact match. If found, delete the person, otherwise tell the user there wasn't a match.
- **Requirement**: Your system must keep a **single** array holding all of the people.
- **Hint**: Use _classes_, _inheritance_, and maybe even _modules_ to your advantage

## Adventure mode

- [ ] Update the search to allow search for a partial match against the person's name
- [ ] Don't allow creating a new person if their name already exists
- [ ] Add one more data element that is the same for both employees and students
- [ ] Add one more data element that is unique for an employee
- [ ] Add one more data element that is unique for a student

## Epic Mode

- [ ] Allow searching by `position`, `name`, `Slack Account`, or `Github Account`
  - [ ] If searching by position, show the name of all people matching the position
- [ ] Create a new menu option that shows a report containing:
  - [ ] For each position, show the minimum, maximum, and average salary.
  - [ ] The number of employees for each position
  - [ ] The names of each employee in that position
