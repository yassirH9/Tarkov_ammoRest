# Tarkov_ammoRest

<!-- ABOUT THE PROJECT -->
## About The Project
The project is designed to help players of Scape From Tarkov, an ultra-realistic simulation shooter video game, to make the choice of material before a raid, for now only ammunition is available, but the app aims to be a multiplatform raid wiki.



### Built With
[Angular](https://angular.io/)
<br>
[Ionic](https://ionicframework.com/)
<br>
[Spring](https://spring.io/projects/spring-boot)
<br>
[Hibernate](https://hibernate.org/)


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

First make sure you have installed a Mysql server to host the data, node.js, eclipse for the back-end and finally vs code with ionic for the front-end.


### Installation

the first thing to do is to clone the repository after installing the prerequisites.
<br>
Git Clone
```sh
git clone https://github.com/yassirH9/Tarkov_ammoRest
  ```
After cloning the project import the TarkovData_Backend folder in eclipse to run the back-end and use the tarkov_data_source_ammo.sql file to generate the database table with the required sample data.

the next step is to use visual studio and open the project directory TarkovData_Frontend then open an integrated terminal of the project and execute the following commands.

Install NPM packages 
```sh
npm install
   ```
 Install Ionic CLI 
```sh
npm install -g @ionic/cli
   ```
start web server
```sh
ionic serve
   ```

## PostMan Docs
In the following link you can find the tests performed in postman along with their documentation

[PostMan](https://documenter.getpostman.com/view/23381057/2s83tGnr7Y)

## Source of data

All sample data was extracted from the scape from tarkov data api and using the following java program converting that json information into a .sql file to import into a mysql database.

[Data converter](https://github.com/yassirH9/Tarkov-ammo-to-JSON-and-SQL)
<br>
[API](https://tarkov.dev/api/)
