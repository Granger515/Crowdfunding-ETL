# List Comprehensions

## Instructions

Use list comprehensions to create the following lists:

1. Make a list of numbers up to 100 that are divisible by three.

    * **Hint:** Remember the modulo operator `%`! `x % y` gives the remainder if x is divided by y. So, for instance `x % 2` will be 0 when x is even, and 1 when x is odd.

2. Make a list of numbers up to 100 that are divisible by three OR divisible by five.

3. Use conditional list comprehensions to create a list of all the pet dog names.

    ```python
    pets = [{
    'name': 'Fido',
    'age': 4,
    'type': 'dog'
    }, 
    {
    'name': 'Rex',
    'age': 2,
    'type': 'dog'
    }, 
    {
    'name': 'Puddles',
    'age': 7,
    'type': 'wombat'
    }, 
    {
    'name': 'Tuna',
    'age': 6,
    'type': 'cat'
    }, 
    {
    'name': 'Springer',
    'age': 5,
    'type': 'dog'
    }]
    ```

4. Use a list comprehension to create a list containing three items; a "customer_id", "name", and "email" for each customer in the customers list. 

    ```python
    customers = ["400021,Adrianna Raysor,adrianna.raysor@360.cn",
    "400064,Amberly Kerfie,a.kerfie@instagram.com",
    "400042,Angelique Kleiner,a.klein@google.com",
    "400059,Arleen Bergman,arleen.bergman@friendfeed.com",
    "400006,Arlinda McBrayer,amcbrayer@scribd.com",
    "400014,Astrid Brewster,a.brewster@homestead.com",
    "400027,Ayanna Filippelli,ayanna@reddit.com"]
    ```

5. Use a list comprehension to extract the "customer_id" from each customer in the customers list and then convert the "customer_id" to an integer. 


6. Use a list comprehension to split each customer "name" into a first and last name. 

---

© 2022 Trilogy Education Services, LLC, a 2U, Inc. brand.  Confidential and Proprietary.  All Rights Reserved.