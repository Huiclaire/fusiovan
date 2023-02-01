
# FusioVan

FusioVan is a web app to help aspiring DIY camper van builders choose their appliances and solar energy system components in a user friendly way.

## Demo

Visit the production version [here](http://www.fusiovan.com/)

Demo Login can use the following credentials to explore the app:

- Username: email1@email.com
- Password: 1234561

## Stack

- Beckend: Ruby on Rails
- Frontend: HTML5,CSS3, JavaScript, Bootstrap

## Features

- Browse community builds: Allow users to browse and explore a library of camper van builds created by the community.
- Create a build: Enable users to create their own camper van builds using an easy-to-use tool powered by Javascript and Stimulus.
- Build library: Provide access to a growing library of camper van builds, with new builds added regularly.
- User-friendly tool: Make it easy for users to create and customize their own builds using a user-friendly interface.
- Realistic simulations: Offer real-time simulations of the builds, allowing users to visualize their creations in detail.

## Code Structure

The application centered around the Build model.
There are three important parts of a build that is Battery, SolarPanel and many Appliance(s) with their own models and configuration. 

## Deployment

To deploy this project run

```bash
  bundle install
```
```bash
  yarn install
```
```bash
  rails db:migrate
```
```bash
  rails db:seed
```

## Authors and Acknowledgment

- [Tim Banta](https://github.com/bantabanta)
- [Demetris Tzionis](https://github.com/D-i-m-i)
- [Maxime Carrat](https://github.com/MaximeCarrat)

