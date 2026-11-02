</> Markdown
# Library Practice project
## Description:
The Library Practice Project started as a Java OOP practice project focused on building a simple library system.

After learning Selenium test automation and implementing it in the SauceDemo automation project, I returned to 
this project to improve its structure, add new functionality, and implement my first JUnit tests while the 
application was still using in-memory data storage.

The goal of this phase was to practice unit testing, refactor existing logic based on test results, 
and gain a better understanding of test-driven development principles.

In the final phase, I connected the application to a PostgreSQL database using JDBC. I implemented repository 
classes for database operations and added integration tests covering database connectivity, data retrieval, 
and business logic. During development, I also refactored the Java classes based on issues identified through testing.

## Tech Stack:

    - Java (OpenJDK 26)
    - IntelliJ IDEA 2026.1
    - JUnit 5
    - Maven
    - JDBC
    - PostgreSQL
    - Git & GitHub

## Features

- Add books to the library
- Register users
- Borrow and return books
- Track active and archived loans
- Validate business rules using exceptions
- Retrieve youngest user
- Sort users by surname

## Database configuration

The project uses PostgreSQL as its database.

The database schema is provided in database/schema.sql. Execute this script in PostgreSQL 
to create the required tables and sequences.

Database connection details are stored locally in database/database.properties and are loaded 
by the DatabaseConnection class.

Because the database.properties file is excluded from version control to protect database credentials,
rename the database.properties.example to database.properties, and update its values to match your 
database server address, port number, database name, username and password.

## How to run

1. Clone the repository
2. Open the project in IntelliJ IDEA
3. Load Maven dependencies (IntelliJ will handle this automatically)
4. Execute database/schema.sql in PostgreSQL to create the required tables and sequences.
5. Make sure database connection settings in database/database.properties are configured .
6. Run all tests from IntelliJ IDEA Maven panel or via terminal:

```bash
mvn test
```
# Testing

## This project includes:

- 28 automated tests written with JUnit 5
- Unit tests for core business logic
- Repository tests for database operations
- Integration tests for business logic involving multiple components
- Positive and negative test scenarios
- Exception handling tests
- Sorting and data validation tests
- Regression testing after refactoring

## What I learned

- Writing unit tests with JUnit 5
- Structuring test data using helper methods
- Refactoring code based on test feedback
- Handling exceptions in business logic
- Using Git for version control and project history
- Understanding regression testing in practice
- Connecting a Java application to PostgreSQL database using JDBC
- Writing SQL queries and testing database operations
- Retrieving database records and creating corresponding Java objects through repository classes

## Future Improvements

- Implementation of equals() and hashCode()
- Expansion of business rules and validation
- Introduction of API layer for external access



