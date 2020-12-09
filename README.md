# Covid-Management-System

Our mission is to help state health care systems properly manage and observe the ongoing COVID-19 Pandemic and its effect on its citizens. We strive to provide the tools and statistics to effectively monitor and take actions against COVID-10.
This application aims to help track COVID-19's spread, manage hospital capacities and supplies, track cases and tests, and offers tracing capabilities. 

We have built a console application, GUI, and an ASP.net web application for users to play with.

## Getting the Database Set Up

To run queries in the console or GUI application you need to have the mm_cpsc502102team04 database set up in your local connection. 

In your MYSQL workbench go to your local connection and open the dump.sql file. Run the SQL script and it will automatically create a new schema called mm_cpsc502102team04.

## Running the Application in IntelliJ IDEA

### Using the GUI 

There are several ways to run the application. You can open up [app](https://github.com/Andydandy77/Covid-Management-System/tree/master/app) in IntelliJ IDEA.

You need to create the configuration by clicking the box to the right of the hammer in the toolbar at the top. Click on Edit Configurations, hit the "+" in the top left and choose "Application."
After this, name it ```GUI``` and then in ```Main class:``` type in ```queryrunner.QueryRunner```.

Click OK and now you can run the program by pressing ```Ctrl+R``` or clicking the green arrow next to the hammer.

The GUI will appear, once inside, enter in your local database credentials and click "Connect"

There will be a dropdown menu that has our preloaded query descriptions. If you click one, you will see the MySQL Statement in the text box above.
If there are any parameters for any of the queries, you will be prompted to fill in the parameter values.

The query results will be shown below.

### Using the Console

To use the console application in IntelliJ IDEA, you need to create a new configuration. We do it the same way we did with the GUI configuration. It's the exact same, but name it
```Console``` and then in the input box ```Program arguments:``` enter ```-console```

When you run the console application, you will see all the stored MySQL descriptions listed as such:

``` 
Queries displayed below:

1. Show Positive Checkins
2. Show High Risk Businesses
3. Hospital Inventory
4. Tests by State
5. Case Statistics
6. Testing Statistics
7. Treatment Statistics
8. Average Age of Death
9. Highest Recovery State
10. Inventory check
11. Create Check-in
12. Case Update
13. Patient Status
14. Get Contact Tracer
15. Search by State

Query to run (type 'custom' for custom query to add, type 'show 2' to show SQL for query 2):
```
To run a specific query, just type in which number it relates to.
Let's say you wanted a list of businesses that have the most visits by people who tested positive for COVID-19. Type in ```2``` and enter. 
You will see the following below:

```
+-----------------+------------------------------------+------------+
| positive_visits | business_name                      | state_name |
+-----------------+------------------------------------+------------+
| 8               | Ernser, Crist and Hauck            | Washington |
| 6               | Kertzmann, Pfannerstill and Marks  | Idaho      |
| 5               | Farrell-Murray                     | Texas      |
| 4               | Gibson-Lemke                       | Oregon     |
| 4               | Russel Inc                         | Tennessee  |
| 4               | Kautzer Inc                        | Texas      |
| 4               | Prohaska and Sons                  | Tennessee  |
| 4               | Rippin-Schroeder                   | Louisiana  |
| 4               | Hegmann, Fahey and Gorczany        | Colorado   |
| 4               | King and Sons                      | Washington |
| 3               | Kuhn and Sons                      | Louisiana  |
| 3               | Bernier-Morissette                 | Tennessee  |
| 3               | Dibbert Inc                        | New York   |
| 3               | Price Group                        | Oregon     |
| 3               | Graham LLC                         | Tennessee  |
| 3               | Fay, Oberbrunner and Hudson        | Texas      |
| 3               | Haley Inc                          | Idaho      |
| 3               | Herzog Group                       | New York   |
| 3               | Bogan, Satterfield and Hodkiewicz  | California |
| 3               | Zboncak-Greenfelder                | Colorado   |
| 3               | Harvey and Sons                    | Delaware   |
| 3               | Hamill Inc                         | California |
| 3               | Hegmann-Glover                     | Washington |
| 3               | Lindgren, Homenick and Greenfelder | Texas      |
| 2               | Jacobs-Collier                     | Colorado   |
| 2               | Carroll-Jakubowski                 | Tennessee  |
| 2               | Huels-Reilly                       | Tennessee  |
| 2               | Heathcote-Padberg                  | Washington |
| 2               | Gutkowski, Jenkins and Maggio      | Washington |
| 2               | Donnelly Inc                       | Idaho      |
| 2               | Bergstrom Group                    | Texas      |
| 2               | Kunde, Runolfsdottir and Jones     | Delaware   |
| 2               | Deckow Group                       | Oregon     |
| 2               | Ullrich, Walsh and Metz            | Idaho      |
| 2               | Gulgowski-Collins                  | California |
| 2               | Herman Group                       | Idaho      |
| 2               | Padberg-Kutch                      | Idaho      |
| 2               | Schmitt Inc                        | Idaho      |
| 1               | Kub LLC                            | Oregon     |
| 1               | Mueller-Cremin                     | Oregon     |
| 1               | Lockman, Sipes and Rutherford      | Louisiana  |
| 1               | Cartwright Inc                     | Delaware   |
| 1               | Treutel LLC                        | Delaware   |
| 1               | Murray, Reichert and Weber         | Washington |
| 1               | O'Reilly, Pouros and Marquardt     | Delaware   |
| 1               | Abbott LLC                         | Colorado   |
+-----------------+------------------------------------+------------+
```

### Console Nice to Haves
We decided that displaying the query description was easier on the eyes, but we still wanted the user the ability to see the SQL statements.
To display the SQL statements, type in ```show 3``` to print out the SQL statement for query 3. If you wanted to show multiple SQL statements at once, 
for example, 3 4 and 5, type in ```show 3 4 5```:

```
SQL Statement for query number 3: SELECT COUNT(*) AS Total_Tests, s.state_name FROM Tests JOIN State_Dep_Health s USING (state_dep_health_state_id) GROUP BY state_dep_health_state_id;
SQL Statement for query number 4: SELECT status, count(people_id) as number FROM Cases group by status;
SQL Statement for query number 5: SELECT result, count(people_id) as number FROM People group by result;
```
We also added the capability for a user to create their own custom queries. To do this type in ```custom``` when prompted. Lets make a query that grabs 
Personal Information for people that have last names that start with "A".

Type in the query description (this is what will be displayed when queries are displayed), type in the SQL statement, parameters should be ```?```, type ```y``` if there are parameters, ```y``` 
if it’s an action query, the name of the parameter (delimited with spaces if there are multiple parameters), ```y``` if any of your parameters are ```like```, and then the index or indices of 
which parameters are ```like``` variables. For example, if you have three parameters and the first and third ones are ```like``` variables, type in ```0 2```.

It should look something like this:
```
Type new query description: People whose last name start with
Type SQL Statement: SELECT * FROM Personal_Information where lname like ?
Does the query have parameters? (y/n) y
Is the query an action query? (y/n) n
Type parameter names with spaces delimiting them: lname
Are any parameters 'like'? (y/n) y
What index is the parameter (first parameter has index of 0, space indexes): 0
Success: People whose last name start with successfully added to queries.
```
After this, your new query called ```People whose last name start with``` will be displayed the next time the queries are listed.

## Running the Application in the Terminal

If you don't want to deal with creating the configurations or having Intellij IDEA you can instead run both the GUI and the console programs through the command line.
Go to [app/classes/artifacts/QueryRunner_jar](https://github.com/Andydandy77/Covid-Management-System/tree/master/app/classes/artifacts/QueryRunner_jar) and to run
the GUI, type in ```java -jar QueryRunner.java``` or ```java -jar QueryRunner.java -console``` to run the console version.




