# Transforming and Cleaning IoT Data

## Instructions

Using the starter code provided, you'll transform and clean the `temperature_data.csv` dataset and create the following DataFrame with the appropriate data types for each column. 

  ![IoT temperature final DataFrame](Unsolved/Resources/01-final_transformed_cleaned_DataFrame.png)

1. Read the `temperature_data.csv` file into a DataFrame. Use the `sep=","` as the delimiter and `header=None`.

2. Convert the JSON string data to a Python dictionary, and then do the following:

    * Create two list one for the keys and one for the values.

    * Iterate through the DataFrame the row data.

    * Convert each row of JSON string data to a Python dictionary.

    * Use a list comprehension to get the keys from the Python dictionary.

    * Use a list comprehension to get the values from the Python dictionary. 

    * Append the keys and values to the lists that were previously created. 

3. Create a new DataFrame using the keys as the columns and the nested list of row values as the data.

4. Use regular expressions and the `extract()` function to do the following:

    * Extract the day of the week from the "timestamp" column and add it to a new column.
  
    * Extract the date from the "timestamp" column and add it a new column. 
    
    * Extract the time of day from the "timestamp" column and add it to a new column.

5. Convert the "date" the following format: `%Y-%m-%d`, then convert the date to a `datetime64[ns]` format.

6. Drop the "timestamp" column, and reorder the columns to get the required DataFrame. 

    ![IoT temperature final DataFrame](Unsolved/Resources/01-final_transformed_cleaned_DataFrame.png)

---

© 2022 Trilogy Education Services, LLC, a 2U, Inc. brand.  Confidential and Proprietary.  All Rights Reserved.