#Spring boot micro services
##Agenda
- Intro spring boot
    - phil
    - how to
    - live demo
-Rest
-Micro services
-How they comlmenet
-Questions

##Rest
- Roy Fielding
- Archetech not protocol or framework
- Resource based things opposed to actions
- Representation JSON/XML
- Not tied to HTTP

##Rest drivers
###Interoperability & Rise of Mobile
- Services have to client agnostic
- mobile explosion
- *clients and service need to evolve independently*
- latency issues performance and reliability
    - lean transfer of data network unreliable
- horizontal scalability
    -add nodes to support more users

##How to derive REST style
- Start with a clean state and reach the desired goals
- Start with system as a whole and add constraints

##REST Constraints
- Uniform interface decouple client server implementations
    - User uri to identify resource
    - HTTP for description GET DELETE POST
    - HTTP Header to describe messages
    - Hybermedia as the engine af application state ie HATEOAS
- Statelesss server maintains no client state
- Client/Server seperate concerns
- Cacheable server response are cacheable where appropriate
- Layer system components are independent
- Code on demand service can temprarily extend client (Optional)
If you do  everything wrong you will probably still be at level 2 if you use pring

#Hypermedia as the engine of application state
Help client navigate the Service API by providing necessary information dynamically in the response using media types and link relations

#CRUD using HTTP methods
- Create=PUT/POST
- Read=Get
- Update=POST/UPDATE
- DELETE=Delete

#HTTP Status codes
use status codes to inform the client what is happening

#Micro-services
- Compnent via services
    - component can be independently replaced or upgraded
    - limit scope 
    - Downside remote calls are more expensive than in process calls
- Organized around Business Capabilitie
    - When splitting a large app don't just focus on tehc
    - Organize around business capabilities and org structures

-Products not Projects you build it you own it
    - Treat like products not projects
    - Developers own the product post development
-Smart endpoint dumb pipes
    - ESB dumb endpoints smart pipes
    - Component should hava a purpose meet business needs
- Decentral govmt
    - Each service can use a specific teh 
    - Contrasts SOA archtech

- Decentral data management
    - comcept model of world differs between ssytems and problems
    - splitting monoliths into micro decentral data
- Infrastructure Automation
    -Embrace CI run lots of test and promote build
- Design for failure
    - Murphy what can fail will fail
    - Put emphasis on Real-time monitoring

#Spring Boot
- Rapid dev
- opinonated out of the box
- provide range of non-funtional features
- Provide a range of non-functional features
- No requirement for XML config
##Convention over Config
- DRY Don't repeat yourself
- Start with sensible defaults
##Get to know
- You should only have to configure somthing to use it
- Executeable jar file runs on embeded tomcat
- supports spring
- oob production ready managment/monitoring
- cloud deployment sypport - Heroku Openshift Cloud Foundry
Google app engine etc
##Getting started
- initializer with main method
- maven parent spring-boot-starter-parent
- Optional application.properties for customer/overriding default config
- autoconfiguration

#Live code
start.spring.io will generate a starter project for you
jpa entity

@SpringBootApplication

override dependence from the startrs

actuator service exposes lots of stat for you, wonder if you can disable for production?

building service allows you scale the parts that matter
you can get your business logic out of your
extending to mobile you have to expose two endpoints for one service
sending more data than you need to send if you are sending over the html docs
REST architechure you have uniform request architech

Replace the client and you can still hit your services



