# SaveSpace (Backend)

A web application made to rate and review a location based on their inclusivity for women, people of color and the LGBTQ community.

## About & History

Have you ever felt uncomfortable or like you didn't belong at a certain establishment based on your gender, race or sexuality?
SaveSpace was created with those experiences in mind.
First created at Technica 2017, Redone in 2019.

Created with a Ruby on Rails [Backend](https://github.com/aariasgonz21/SaveSpace-backend), scraping establishment data using the Yelp Fusion API in the backend, using React to create separate components for each page & functionality (Reviews, Ratings, Search, Establishment Pages, etc.), and Custom CSS + Semantic UI for styling.

All ratings for a location are **averaged** based on all users ratings.

## Features
- Users can login or sign up and be directed to their profile page
- Users can search for an establishment based on term and location within NYC
- Users can view an establishment and other user reviews
- Users must be logged in to rate and review an establishment
- Users can view all their reviews from different establishments on their profile page

## Made Using
- React
- Ruby on Rails
- CSS
- Semantic UI
- Yelp Fusion API
- React Popup Package
- React Typist Package

## Installation

### `bundle install`
Installs packages necessary to run application.

### `rails s -p 3001`
Starts up the rails server on [http://localhost:3001](http://localhost:3001)

**Note: Backend must run on localhost:3001**

## Screenshots

![Home](/public/SaveSpace-home-pic.png)

---

![AboutUs](/public/savespace-about-us.png)

---

![Profile](/public/savespace-profile.png)

---

![Search](/public/savespace-search.png)

---

![Establishment](/public/savespace-establishments.png)

---

![Reviews](/public/savespace-reviews.png)

## Video Demo

**[Demo](https://www.youtube.com/watch?v=SfkfBJM-vpM&t=2s)**
