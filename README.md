# Bogotá and Its Mobility Infringements

This project emerges from a general interest in mobility in cities with so many mobility issues such as Bogotá, in Colombia, and an interest in finding how all the elements involved in traffic affects it. This project analyzes one of this many parts: The infringements and bad behavior of drivers in the streets. I hope anyone interested in mobility, specially in Bogotá, finds this interesting and useful.

This project correspond to my final project in the Google Data Analytics Professional Certificate, which information can be seen [here](https://coursera.org/share/3275a21265eee52ef339fbf259de6b75)

## The Data

The data analyzed is real data of infringements imposed in Bogotá between 2015 and 2021, extracted from the Open Data District Secretary of Mobility [web site](https://datos.movilidadbogota.gov.co/), in the category "Infracciones". The original data consist of 7 .CSV files, one for each year, containing the information like latitude, longitude, kind of infraction, kind of vehicle and the name of the location related to the infringement. 

## The Process

These 7 files were processed using Python, R and SQL in Google's BigQuery platform for generating a single file that is used for creating a final visualization in Tableau. In a fast overview, the data cleaning and processing consisted on making the .CSV usable (due to formating errors in some files), standardizing the categories in some variables since between years a same category was written in different ways, and filling some missing data related to the location's name. A detailed description of these process can be found in the capston-project.md file, in the "Process for the Infringements Data" section.

For the data filling mentioned above, a simple "nearest central point" strategy for each location was implemented, in R for the 2020 file (since the hole column is missing), and in BigQuery for all the empty cells scattered in all the other years. Even though this simple strategy gave some useful results, a better approach for a future implementation would have been using a simple KNN algorithm in Python and filling the data based on the location's name of the neighbors.

## The Visualization

The final visualization made in Tableau can be seen through [this link](https://public.tableau.com/app/profile/david.francisco/viz/dashboard_infringements/Dashboard1) 


## The Conclusion

The main findings in this analysis, which can be seen in the Tableau dashboard, are:
- The lack of record in the original data in May and June 2021.
- The fact that many of the persons that register the information of the locations where the infringements take place (mainly police officers) don't know the city where they work, since there are hundreds of infringements with the wrong location's name. Many of the records have location's names that correspond to places in the opposite side of the city.
- The most common kind of vehicle involved in the infringements and what kind of infringement is imposed the most over each kind of vehicle.
 