- Classes
  - Lets model TIY
    - Start with employee
      ```ruby
      class employee
      end
      ```
    - Add attributes
      - name
      - date of hire
      - position
      - title
      - salary
      - phone number
      - slack account
      - github account
      - introduce *attr_reader / attr_writer*
    - What if salary was based only on role?
    - Introduce inheritance
      - Refactor positions into subclasses, rewrite implementation
    - `self.method`
    - Add more info to github
      - authorization token
      - name of plan
    - Add address
      Address line
      City
      State
      Zip
    - Introduce composition of github and address into classes
    - Introduce students
      - Can't derive from Employee
      - Could extract a new super class `Person`
      - Extract common behaviors into a module
- Inheritance
- Composition
- Modules
  - Name space
  - Common behavior that can be "mixed in" to a class via `include`
