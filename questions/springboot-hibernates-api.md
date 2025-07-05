## ✅ Complete Question Bank for API, REST API, Spring Boot, and Hibernate

---

### ✅ **1. Introduction to APIs** *(Entry Level)*

1. What is an API?
2. What are the benefits of using APIs?
3. What are the types of APIs?
4. What is an API request and response?
5. What is an API endpoint?
6. What is API documentation?
7. What is the difference between an API and a library?

---

### ✅ **2. REST API Fundamentals** *(Entry Level)*

1. What is a REST API?
2. What are HTTP methods (GET, POST, PUT, DELETE)?
3. What is a resource in REST?
4. What is a URI?
5. What are status codes in REST? (e.g., 200, 404, 500)
6. What is JSON in REST APIs?
7. What is statelessness in REST APIs?
8. What are query parameters and path parameters?
9. What is the difference between PUT and POST?
10. What is Postman and how is it used to test APIs?

---


### ✅ 3. Spring Boot Basics

1. What is Spring Boot?
2. What are the advantages of using Spring Boot?
3. What is the difference between Spring and Spring Boot?
4. How do you create a Spring Boot project?
5. What is the purpose of @SpringBootApplication annotation?
6. What is an embedded server in Spring Boot?
7. How do you run a Spring Boot application?
8. What is application.properties/application.yml?
9. How do you create REST endpoints in Spring Boot?
10. What is @RestController?
11. What is @RequestMapping and its variants?
12. How do you handle HTTP requests and responses in Spring Boot?
13. How do you use @Autowired for dependency injection?
14. How do you handle exceptions in Spring Boot?
15. How do you configure logging in Spring Boot?
16. How do you test Spring Boot applications?
17. How do you connect Spring Boot to a database (JPA, JDBC)?
18. What is Spring Data JPA?
19. How do you use @PathVariable vs @RequestParam?
20. How do you validate user input in Spring Boot using @Valid?
21. What is CommandLineRunner and when is it used?
22. How to externalize configuration using application.properties?
23. How do you create custom exceptions in Spring Boot?
24. What is the use of @Component, @Service, and @Repository?
25. How do you enable CORS in Spring Boot?

---

### ✅ 4. Hibernate Basics

1. What is Hibernate?
2. What are the advantages of using Hibernate?
3. What is ORM (Object Relational Mapping)?
4. What is a Hibernate entity?
5. What is the purpose of @Entity annotation?
6. How do you map a Java class to a database table?
7. What is a primary key in Hibernate and how do you define it?
8. What is a Hibernate Session?
9. How do you perform CRUD operations in Hibernate?
10. What is Hibernate configuration file?
11. What is HQL (Hibernate Query Language)?
12. What is the difference between HQL and SQL?
13. What are the different fetching strategies in Hibernate?
14. What is lazy loading and eager loading?
15. How do you handle transactions in Hibernate?
16. How do you integrate Hibernate with Spring Boot?
17. What is the difference between Session and EntityManager?
18. What is the role of persistence.xml?
19. What are annotations for one-to-many and many-to-one relationships?
20. What is @Table, @Column, @Id, @GeneratedValue used for?
21. What are cascade types in Hibernate?
22. How do you handle relationships: OneToOne, OneToMany, ManyToMany?
23. What are first-level and second-level caches in Hibernate?
24. How does Hibernate manage connection pooling?
25. What are some common performance issues in Hibernate?


------------------------------------------------------------------------------------------------


Here are **20 basic-level practical questions** (hands-on oriented) specifically for **Spring Boot and Hibernate**. These are meant to **test your ability to create, configure, and use features practically** – no theory, only practical tasks.

---

### ✅ **Spring Boot – Basic Practical Questions (10)**

1. Create a Spring Boot project using Spring Initializr with `spring-boot-starter-web`.
2. Create a simple `@RestController` with a GET endpoint `/hello` that returns `"Hello, World!"`.
3. Use `@PathVariable` to return a personalized message like `/hello/John -> "Hello, John!"`.
4. Accept a JSON payload in POST request and return a confirmation response.
5. Configure the server port to `8081` using `application.properties`.
6. Inject a service class into a controller using `@Autowired` and call a method.
7. Create a `@Component` class and inject it into another class.
8. Log a message using Spring Boot's default logging.
9. Handle a custom exception using `@ControllerAdvice` and return an error response.
10. Create a `GET` endpoint that accepts a query param and returns a custom message.

---

### ✅ **Hibernate – Basic Practical Questions (10)**

11. Configure Hibernate in Spring Boot using `spring-boot-starter-data-jpa` and H2/MySQL.
12. Create an entity class `User` with fields `id`, `name`, and `email`.
13. Map the `User` class to a database table using `@Entity` and `@Table`.
14. Save a user record using `JpaRepository`.
15. Retrieve a user by ID using a repository method.
16. List all users from the database using a REST endpoint.
17. Update a user’s email using a PUT request and save changes to the DB.
18. Delete a user by ID using DELETE API and repository method.
19. Use `@GeneratedValue` to auto-generate primary key values.
20. Demonstrate lazy vs. eager loading using a one-to-many relationship (e.g., `User` and `Posts`).

---

