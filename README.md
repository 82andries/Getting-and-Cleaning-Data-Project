# Getting-and-Cleaning-Data-Project
## The final submission for the project in week4

* This is a short description explaining how my code in run_analyis.R works and fit together to achieve the results for the assignement.

1. Set the working directory 
2. load the libraries I will use
3. Check if the directory exists else it creates one
4. Loads the URL and wrties it to a file called datasets.zip
5. unzip the file
6. Read in all the files into R 
7. Assign column names as given by the features.txt file
8. Combine all the test data and the train data by comining the columns
9. Combibne the data in step 8 by adding the rows together
10. Use grepl to create a logical filter for mean and std
11. USe the logical values from step 10 to create a new data.frame with only std and mean values
12. replace the values of $ActivityID with description
13. Replace certain parts of the variable names with more descriptive wording
14. Melt the data into SubjectID, ActivityID, variable and value
15. Create a new data.frame with the mean value of all vairables for SubjectID and ActivityID
16. Writes data into a new tidy data file calles *tidydata.txt*


