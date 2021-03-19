#Backend Challage

## Learning Competencies
- Implement Object Oriented Design.
- Good usage of git.
- Implement tests.
- Good implementation of logic.

# The challenge

we have to create an API to feed a home of news about our platform.
Your task is to build an API focusing on quality and good practices.
The test consists of two main user stories, one to create news and the other one to
show those news in the feed.

## Review
#### User:
A user model has to exist, but it is not required to create an authentication process for it.
You can mock the user having the ability to login and the admin role on the model.

#### Post a news item:
We need to provide an endpoint so frontend will be able to create news about our
company. A news item should have at least a field for the name and another one with
the content of it. Only admins should be able to create news (simulate that a user is Signing to the API, we do not need a real authentication process)

#### Get home news:
We need to provide an endpoint where we will be able to show created news to our
users. This endpoint should return all created news, only logged in users should be able to retrieve information of this endpoint

## Setup
To setup:
```bash
 ruby setup.rb || ruby setup.rb --help
```
To run spec:
```bash
 rspec .
```
To start server:
```bash
  rails s
```

## Challenges
- Found it a challenge to understand what it meant by simulate user authentication.

## Summary
This challenge was completed in 6 days. It was quite an experience. Listed below are things I enjoyed.

- Implement render of JSON
- Challenging myself the notion of roles and policies.
- Implementing travisci for continuous testing and intergration.
- Having functional MVP.
- Commiting often.

Here are some things I would like to improve in my implementation:
- Make my tests and code more DRY.
- A better understanding for the intergration travisci
