# MyNotes App build scripts

This repo contains build and run scripts for this project:  
back: [MyNotes SpringBoot Service](https://github.com/alexshavlovsky/mynotes-springboot-service).  
front 1: [Angular Material NgRx REST Client](https://github.com/alexshavlovsky/mynotes-material-client.git).  
front 2: [Angular Bootstrap REST Client](https://github.com/alexshavlovsky/mynotes-ng-client.git).

- prerequisites: maven, git, java8, docker, docker-compose
- containers: SpringBoot app + clients served by nginx

### Usage
```
1. git clone https://github.com/alexshavlovsky/mynotes-ci-template.git
2. cd mynotes-ci-template
3. Linux:   sh build.sh
   Windows: build.cmd
```

This is a double-frontend project. A frontend version may be switched at any moment by pressing an icon at the right upper conner of the page or by typing corresponding URI path: 

- a material client is accessible at `https:\\host\material\ `  
- a bootstrap client is be accessible at `https:\\host\bootstrap\ `

Default users:

Email              |Password |Role
---                |---      |---
user@example.com   |12345    |USER
admin@example.com  |12345    |ADMIN
admin2@example.com |12345    |ADMIN, USER

## Technology Stack
Component             | Technology
---                   | ---
Runtime               | Java 8
Build tool            | Maven
Server                | SpringBoot WEB (Tomcat)
Security              | SSL, JWT
JWT implementation    | [jsonwebtoken.io](https://github.com/jwtk/jjwt)
Database              | SpringBoot JPA (Hibernate), H2, MySQL         
Email                 | SpringBoot MAIL
Async tasks           | ThreadPoolTaskExecutor
REST data mapping     | Jackson, Bean Validation API, [ModelMapper](https://github.com/modelmapper/modelmapper)
Code reducer          | [ProjectLombok](https://github.com/rzwitserloot/lombok)
Testing               | Junit, Mockito, MockMvc, [GreenMail](https://github.com/greenmail-mail-test/greenmail)
REST Documentation    | [SpringFox Swagger2](https://github.com/springfox/springfox/releases)
MS Excel export       | [Apache POI](http://poi.apache.org/)
Prod packaging        | Docker Engine Container, Alpine Linux, OpenJDK, SpringBoot JAR
**Bootstrap client:** |
JS framework          | Angular 8
Styles and templates  | Bootstrap 4
Icons                 | [angular-fontawesome](https://github.com/FortAwesome/angular-fontawesome)
Pop-up notifications  | [ngx-toastr](https://github.com/scttcper/ngx-toastr)
Textarea autosize     | [ngx-autosize](https://chrum.it/pages/ngx-autosize/)
**Material client:**  |
JS framework          | Angular 9
Styles and templates  | Angular Material 9 / Angular Flex Layout
State management      | NgRx 8 (store, effects, entity)
Forms                 | Angular Reactive Forms
Authentication        | JWT role based
JWT parser            | [@auth0/angular-jwt](https://github.com/auth0/angular2-jwt)
Production packaging  | Docker Engine Container, Alpine Linux, Nginx (SSL, HTTP2, API proxy)

## Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/alexshavlovsky/mynotes-material-client/master/screenshots/01_login-page.png" width="270"/>
  <img src="https://raw.githubusercontent.com/alexshavlovsky/mynotes-material-client/master/screenshots/08_notebook-menu.png" width="270"/>
  <img src="https://raw.githubusercontent.com/alexshavlovsky/mynotes-material-client/master/screenshots/06_full-text-search.png" width="270"/>  
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/alexshavlovsky/mynotes-ng-client/master/screenshots/3_user-notes.png"/>
</p>
