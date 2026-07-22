# Blog App

A Ruby on Rails blog application built as part of my Rails learning journey. The project demonstrates CRUD operations, model associations, authentication, authorization, nested resources, and responsive styling using Tailwind CSS.

## Features

### Blog Management

* Create, edit, and delete blog posts
* View all blog posts
* View individual blog details
* Protected routes for authenticated users

### Comments

* Add comments to blog posts
* Edit and delete comments
* Nested comment routes (`/blogs/:blog_id/comments`)
* Comments are associated with their respective blog posts

### Authentication

* User registration
* User login and logout
* Password encryption using `has_secure_password`
* Session-based authentication
* Flash messages for login/logout and other actions

### Authorization

* Only authenticated users can create blog posts and comments
* Users can edit and delete only their own blog posts
* Users can edit and delete only their own comments
* Blog owners can moderate comments on their own posts

### Database

* PostgreSQL database
* Active Record associations
* Database migrations
* Model validations

### User Interface

* Tailwind CSS styling
* Responsive layouts
* Flash notifications
* Clean forms with Rails form helpers

---

## Technologies Used

* Ruby
* Ruby on Rails
* PostgreSQL
* Tailwind CSS
* HTML (ERB)
* Git
* GitHub

---

## Database Relationships

```text
User
 ├── has_many :blogs
 ├── has_many :comments
 └── has_many :sessions

Blog
 ├── belongs_to :user
 └── has_many :comments

Comment
 ├── belongs_to :blog
 └── belongs_to :user

Session
 └── belongs_to :user
```

---

## Rails Concepts Practiced

* MVC Architecture
* CRUD Operations
* Active Record
* Model Associations
* Nested Resources
* Strong Parameters
* Validations
* Migrations
* Authentication
* Authorization
* Sessions
* Cookies
* Flash Messages
* Before Actions
* RESTful Routing

---

## Getting Started

### Clone the repository

```bash
git clone <repository-url>
cd blog_app
```

### Install dependencies

```bash
bundle install
```

### Set up the database

```bash
bin/rails db:create
bin/rails db:migrate
```

(Optional)

```bash
bin/rails db:seed
```

### Start the server

```bash
bin/rails server
```

Open your browser and visit:

```
http://localhost:3000
```

---

## Future Improvements

* User profile settings
* Username support throughout the application
* Search functionality
* Blog categories/tags
* Image uploads with Active Storage
* Pagination
* Rich text editor (Action Text)
* Likes and reactions
* User profile pages
* Deployment to a cloud hosting platform

---

## What I Learned

This project helped me gain practical experience with Ruby on Rails by building a complete web application from scratch. Along the way, I learned how to:

* Build RESTful applications following the MVC pattern.
* Design and manage relational databases using PostgreSQL.
* Create and maintain Active Record associations.
* Implement authentication using sessions and cookies.
* Protect routes and authorize user actions.
* Use Rails form helpers and nested resources.
* Manage database schema through migrations.
* Style applications with Tailwind CSS.
* Organize a Rails project using Rails conventions and best practices.

---

## Author

Matthew0227

Built as part of my Ruby on Rails learning journey through The Odin Project and hands-on practice.
