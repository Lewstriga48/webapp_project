
Copyright Arda ata arslan.

Introduction:

This web application allows users to manage a list of users. Each user has a username, email, and full name. The system is built using Flask, a lightweight Python web framework, and integrates with a MySQL database to store user information.

1. CSS (styles.css):
This stylesheet provides styling for the application. It makes the tables, forms, and various HTML elements visually appealing.

The body uses the Arial font.
Tables span the entire width of their container, have collapsed borders, and alternating row colors for readability.
Form inputs have margins and padding for spacing and aesthetics.
The "submit" button has a green background for emphasis.
2. HTML:
edit_user.html:
This page allows admins to edit existing users. It displays a form with fields pre-filled with current user data. On submission, it updates the user's details.

user_posts.html:
Lists posts related to a specific user. Each post has a title and content. There's a link to navigate back to the main user list.

3. Python (app.py):
The backend logic is written in Python using the Flask framework.

Database Configuration: SQLAlchemy is used for ORM, and Flask-Migrate for database migrations.
User Model: Represents a user in the system with fields: id, username, email, and full name.
Routes:
/: Lists all users.
/add_user: Allows adding a new user.
/delete_user/<int:id>: Deletes a specified user by ID.
/edit_user/<int:id>: Edits a specified user's details.
4. Docker:
docker-compose.yml:
Defines two services: web (Flask app) and db (MySQL database).

web: This service builds the application using the provided Dockerfile, exposes it on port 5000, and relies on the database.
db: Uses the MySQL 5.7 image, sets some environment variables (like database name, user, passwords), and defines a volume to persist data.
Dockerfile:
Instructions to build the Docker image for the web application.

Sets Python 3.8 as the base image.
Sets the working directory in the container to /app.
Installs necessary Python packages from requirements.txt.
Copies the application code to the container.
Specifies the command to run when the container starts.
requirements.txt:
A list of Python packages required for the application.

Includes Flask, Flask-SQLAlchemy for web and database functionality, and other necessary packages.

5. Conclusion:
This web application provides a straightforward interface to manage users and their posts. It leverages the Flask framework for the web part and MySQL as the database. Docker ensures that the application is containerized and can be easily deployed.