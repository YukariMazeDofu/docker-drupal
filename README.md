# docker-drupal

## What is this?

This is simple develop environment to build Drupal8.  
**FOR SELF-STUDY**

## Install

1. Quick Setup  

  1. Install composer, docker and docker-compose.
  1. Clone this repo.
  1. Do `./ComposeDrupal.sh`
  1. Docker-compose this.  
  ```
  cd .. && docker-compose up -d
  ```
  1. Access `localhost:8080`


1. Manual Setup  

  1. Install composer, docker and docker-compose.
  1. Clone this repo.
  1. Compose drupal.  
  ``` 
  composer create-project drupal-composer/drupal-project:8.x-dev Drupal
  ```  
  1. Compose require.  
  ```
  cd Drupal &&
  composer require drupal/devel:~1.0
  ```
  1. Docker-compose this.  
  ```
  cd .. && docker-compose up -d
  ```
  1. Access `localhost:8080`
