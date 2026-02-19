## About the Data
This project uses a relational database designed to model the operations of a residential property management system. The data captures how buildings are managed, inspected, leased, and maintained. It includes managers who oversee buildings, inspectors who perform scheduled inspections, corporate clients that lease apartments, and staff members. Each building contains multiple apartments with attributes such as number of bedrooms and rent, and apartments may be assigned to corporate tenants. The database also tracks operational relationships, including which managers live in specific buildings, which inspectors service which buildings, and which staff members clean particular apartments. 

## Key Types and Constraints
Primary keys are used on the tables to uniquely identify each record to ensure that every manager, building, inspector, corporate client, and staff member can be referenced properly. Some entities use composite primary keys, such as apartments and relationship tables like inspecting and cleaning, which represent many-to-many associations. Foreign keys enforce relationships between tables and maintain referential integrity. For example, buildings must reference valid managers, apartments must belong to valid buildings, and cleaning assignments must reference existing apartments. There are also special constraints such as self-referencing foreign keys, unique constraints, and associative tables to model multi-valued and many-to-many relationships. 

## A. What is/are the most common apartment number(s)? 
The 3 most common apartment numbers are 21, 11, and 31.
## B. How many different apartment numbers are there? 
There are 12 different apartment numbers in the data.
## C. How many apartments (building-apartment number combinations) are there? 
45 different combinations are possible for a building-apartment relationship.
## D. Which apartments (building-apartment number combinations) have no clients in them? 
### <img width="144" height="172" alt="Screenshot 2026-02-18 at 8 32 08 PM" src="https://github.com/user-attachments/assets/aad22096-d423-4374-9883-8349a66aeb44" /> 

## E. What is the average rent for two-bedroom apartments? 
Average rent for a 2 bedroom apartment is $1731.00.

## F. How many buildings are there? 
9 total buildings in the dataset.

## G. Which building(s) has/have the widest range in rent prices? 
### <img width="562" height="400" alt="Screenshot 2026-02-18 at 8 34 13 PM" src="https://github.com/user-attachments/assets/94bb7aad-0691-41a9-9b1c-1e4ed7faaf40" />

## H. List all the managers (first and last names) with their salaries in order of oldest to youngest. 
###  <img width="528" height="370" alt="Screenshot 2026-02-18 at 8 35 34 PM" src="https://github.com/user-attachments/assets/a2c72a8c-83d0-4f25-99fd-b0f11e1dc0e3" />
## I. Which manager(s) (first and last names) received the largest bonus, and how much was it? 
### <img width="718" height="350" alt="Screenshot 2026-02-18 at 8 37 10 PM" src="https://github.com/user-attachments/assets/2d539b2a-0d78-4fce-bd10-028ad8b6a3e5" />

## J. Which manager(s) (first and last names) manage(s) the most buildings, and how many? 
Austin Lee, Mariana Gonzalez, and Sanborn each own 2 buildings, which is the most in the dataset. 
## K. Who are the manager(s) (first and last names) and their phone numbers of the buildings that were inspected by Bianca? 
1. George Sherman 555-1003
2. George Sherman 555-9999
3. Mariana Gonzalez 555-1216
## L. Which corporate client(s) referred at least one other client, how many did each refer,and which building and apartment do they live in? 
### <img width="356" height="442" alt="Screenshot 2026-02-18 at 8 45 57 PM" src="https://github.com/user-attachments/assets/bcb3fa23-ba04-41b8-9a69-6e9540f5646e" />
## M. Which corporate clients were referred by no one? 
Non-referred corporate clients are BlinNotes, Xilerate, and EntertainUs
## N. What is the name(s) of the staff member(s) who clean(s) the fewest apartments, and how many? 
Aurthur cleans the least amount of apartments, 5 total apartments
## O. For the staff member(s) who cleans the fewest apartments, which apartments (numberand building) does (s)he clean? Include the first name(s) of the staff member
### <img width="224" height="145" alt="Screenshot 2026-02-18 at 8 49 06 PM" src="https://github.com/user-attachments/assets/b73d939a-2629-4f76-8388-e662ebb30087" />
