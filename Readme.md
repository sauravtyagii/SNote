# SNotes: A note taking app

This repository contains a notes-taking web application implemented using Servlet for server-side logic, JSP for dynamic web pages, and MySQL for database management. The app includes features like user authentication to securely manage and access notes.

## Table of Contents
- [About](#about)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Database Schema](#database-schema)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## About

This project is a web-based notes-taking application built using Java technologies. It provides a user-friendly interface for creating, editing, and deleting notes, along with user authentication to secure user data.

## Features

- User Registration and Login
- Create, Read, Update, and Delete (CRUD) Notes
- User Authentication and Authorization
- Secure Password Storage
- Responsive Web Design

## Technologies Used

- Java Servlet
- JavaServer Pages (JSP)
- MySQL Database
- HTML/CSS
- Bootstrap (or any other frontend framework used)

## Database Schema

The MySQL database schema includes the following tables:

- `users`: To store user information (user_id, username, password, email)
- `notes`: To store notes associated with each user (note_id, user_id, title, content, created_at, updated_at)

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/tomarmayankk/SNote.git

## Usage
1. Start the server and navigate to http://localhost:3306/snotes in your web browser.
2. Register a new user or log in with an existing account.
3. Create, edit, or delete notes as needed.

## Contributing

Contributions to this repository are welcome! If you have any suggestions, improvements, or new features to add, please follow these steps:

1. Fork the repository
2. Create a new branch (git checkout -b new-feature)
3. Make your changes
4. Commit your changes (git commit -am 'Add new feature')
5. Push to the branch (git push origin new-feature)
6. Open a pull request



