# Google Capstone Project

## Ask
Five questions will guide your case study: 

1. What type of company does your client represent, and what are they asking you to accomplish?
2. What are the key factors involved in the business task you are investigating?
3. What type of data will be appropriate for your analysis?
4. Where will you obtain that data?
5. Who is your audience, and what materials will help you present to them effectively?

**Answers:**
1. My client is the government of Bogotá (capital of Colombia), who want to extract valuable information from accident and infringements data in the city to implement better mobility strategies.
2. The infringements and accident data in Bogotá for the year 2020 and 2021. A proper understanding of the geospatial data and its proper manipulation.
3. Geospatial data obtained from the data provided by the police, which provides information about the kind of accident and the kind of infringements happened in Bogotá those years
4. From the open data center of the District Secretary of Mobility of Bogotá. It's [web page](https://datos.movilidadbogota.gov.co/).
5. I want to inspect the main accident zones in the city as well as the infringement behavior over time in the city.


**Guiding questions** 
| Question                                                                  | Answer                                                                                                                                                |
| ------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| What topic are you exploring?                                             | Accidents and infringments in Bogotá                                                                                                            |
| What is the problem you are trying to solve                               | What are the main areas of accidents and infringments in Bogotá?                                                                                      |
| What metrics will you use to measure your data to achieve your objective? | Latitude and longitude data mainly                                                                                                                            |
| How can your insights help your client make decisions?                    | Knowing the main areas of accidents in the city could implement a better response strategy in this events |



**Key tasks:**
| Task                       | Answer                                                                                                                                                                                                                                                                     |
| -------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Identify the bussines task | Answer the question: Whats is the distribution of accidents and infringments in Bogotá                                                                                                                                                                                     |
| Determine the stakeholders | The people in charge of implementing new policies for accident managent and improve the response times in this cases                                                                                                                                                       |
| Choose a dataset           | All files, original ones an changes allong the process can be founf [here](https://drive.google.com/drive/folders/1F1dWfuO1ewgBrsvucCtswx2uwG-lOPrh?usp=sharing) . The files named "Comparendos_20XX_Bogota.csv" and "Siniestros_viales_*.xlsx/csv" are the original files |

## Process for the Infringements Data

1. As part of the data cleaning process, some mistakes in the data format of the csv files downloaded from the original source are solved. The errors consisted of line jumps along the file that changed the structure of the csv table. For correcting this, a python script is used ([[python_for_data_manipulation.ipynb]].) The process is explained in the script. In total, 114760 wrong lines are corrected.

2. In R studio, the [[R Analisys.Rmd]] file is created. In this are implemented some more data cleaning:
	- The column names are standardized among all infringements files. 
	- For the 2020 infringements, the original file is lacking the LOCALIDAD (location name) field. For filling this, we use the [[georeferencia-puntual-por-localidad.csv]] file, which contains the central longitude and latitude for each location (extracted from [here](https://bogota-laburbano.opendatasoft.com/explore/dataset/georeferencia-puntual-por-localidad/table/?flg=es) . The gp column is removed, as well as the row with BOGOTÁ before using the file). The closest location for each data point is found calculating its [great circle distance](https://en.wikipedia.org/wiki/Great-circle_distance) for each location coordinates and getting the location with the least distance. 
	- The common columns and the ones of interest once the lacking data in the 2020 file is filled are:
		- LONGITUDE
		- LATITUDE
		- OBJECTID (Unique Identifier)
		- FECHA_HORA (Date and Hour)
		- MEDIO_DETECCION (Detection medium)
		- CLASE_VEHICULO (Kind of vehicle)
		- TIPO_SERVICIO (Kind of service)
		- INFRACCION (Infringement)
		- DES_INFRACCION (Infringment description)
		- LOCALIDAD (Location)
	-  A single .csv file is created containing all the information of interest for the year 2015-2021 ([[infringements_2015_2021.csv]]). This file is ready for making some final cleaning and filtering with BigQuery