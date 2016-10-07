# A simple project to provide an docker container with Roshi. 

##About the system
The docker will be an ubuntu instance with a redis-server, iptables rules and a nginx reverse-proxy to take care about the front.

## The goal

This is a simple project, fell free to use as you want. The ideia is implement a single roshi server ready-to-run.

## What is user for run it?

* Docker

## What is used for create all stuff?

* Docker
* Chef (chef-solo)
* Some third-part code (will be describe asap)
* Some coocker work.

## How it's work?

My ideia is follow the steps bellow:

* Create a Dockerfile that create the container with ubuntu 14:04 (you can change as well).

* Start an script to download and install chef-client, clone the repo with the cookbooks

* Let chef take care about all hard work.
