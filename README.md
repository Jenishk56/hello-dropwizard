# hello-dropwizard

Thanks for giving the opportunity to perform this exercise.

# Introduction

Considering this as a dev environment, I have made the setup automated and deployment the API in local totally stress free.
I have used the docker-compose to collaborate the Container for the API app and Nginx for handling the load balancing and http flow.

Kind Note:- I have done this exercise on a Macbook and didn't require the vagrant to use. I have consider the docker engine running in my system.

# How to deploy ?
It is very simple execute below command in here.

`docker-compose up`

That's it !!!

# What's happening behind the scene ?
The docker compose contains 2 part :-

<b> APP </b>
- Dockerfile present in here. That will compile and package it up the code and run the java against that jar file and expose that to port 8080.

<b> NGINX </b>
- Nginx gets the required configurations present from nginx/conf.d/nginx.conf and place it to the container.
This map the port 8080(Exposed by the app) with 80(http) and handles the redirect required as per the business requirement.

# How to use ?
Just execute below on browser
http://localhost/hello-world

As per the requirement /hello should redirect to hello-dropwizard/hello-world, This is been convered by the nginx.
http://localhost/hello redirects to http://localhost/hello-dropwizard/hello-world
