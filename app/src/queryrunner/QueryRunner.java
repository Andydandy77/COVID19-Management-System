/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package queryrunner;

import java.io.Console;
import java.util.ArrayList;
import java.util.Scanner;

import queryrunner.CommandLineTable;

import javax.management.Query;

/**
 * QueryRunner takes a list of Queries that are initialized in it's constructor
 * and provides functions that will call the various functions in the QueryJDBC class
 * which will enable MYSQL queries to be executed. It also has functions to provide the
 * returned data from the Queries. Currently the eventHandlers in QueryFrame call these
 * functions in order to run the Queries.
 */
public class QueryRunner {


    public QueryRunner() {
        this.m_jdbcData = new QueryJDBC();
        m_updateAmount = 0;
        m_queryArray = new ArrayList<>();
        m_error = "";


        this.m_projectTeamApplication = "COVIDTRACKING";


        m_queryArray.add(new QueryData("Show Positive Checkins", "SELECT pi.lname, pi.fname, c.checkin_date, b.business_name, s.state_name FROM State_Dep_Health s JOIN Businesses b USING (state_dep_health_state_id) JOIN Checkins c USING (business_id)" +
                "JOIN People p USING (people_id) JOIN Personal_Information pi USING (people_id) WHERE p.result = 'positive' ORDER BY s.state_name", null, null, false, false));        // THIS NEEDS TO CHANGE FOR YOUR APPLICATION

        m_queryArray.add(new QueryData("Show High Risk Businesses", "SELECT COUNT(*) AS positive_visits, b.business_name, s.state_name FROM State_Dep_Health s JOIN Businesses b USING (state_dep_health_state_id) JOIN Checkins c USING" +
                " (business_id) JOIN People p USING (people_id) WHERE p.result = 'positive' GROUP BY b.business_id ORDER BY positive_visits DESC; ", null, null, false, false));

        m_queryArray.add(new QueryData("Hospital Inventory", "SELECT Supply.hospital_id AS Hospital_ID, hospital_name AS Hospital_Name, inventory AS Inventory, Item_Description.item_name AS Item_Name FROM Item_Description JOIN" +
                " Supply ON Item_Description.item_id = Supply.item_id JOIN Hospitals ON Hospitals.hospital_id = Supply.hospital_id where Hospital_Name like ? ORDER BY Hospital_ID;", new String[]{"Hospital_Name (like)"}, new boolean[]{true}, false, true));
        m_queryArray.add(new QueryData("Tests by State", "SELECT COUNT(*) AS Total_Tests, s.state_name FROM Tests JOIN State_Dep_Health s USING (state_dep_health_state_id) GROUP BY state_dep_health_state_id;", null, null, false, false));

        m_queryArray.add(new QueryData("Case Statistics", "SELECT status, count(people_id) as number FROM Cases group by status; ", null, null, false, false));

        m_queryArray.add(new QueryData("Testing Statistics", "SELECT result, count(people_id) as number FROM People group by result;  ", null, null, false, false));

        m_queryArray.add(new QueryData("Treatment Statistics", "SELECT Count_Suc, Count_All, Count_Suc / Count_All AS Suc_rate, " +
                "Treatments.treatment_method_id, treatment_name FROM (SELECT COUNT(treatment_method_id) AS Count_Suc, " +
                "treatment_method_id FROM Cases WHERE status = 'recovered' GROUP BY treatment_method_id) AS x JOIN " +
                "(SELECT COUNT(treatment_method_id) AS Count_All, treatment_method_id FROM Cases GROUP BY treatment_method_id) " +
                "AS y ON x.treatment_method_id = y.treatment_method_id JOIN Treatments ON y.treatment_method_id = " +
                "Treatments.treatment_method_id;", new String[]{}, new boolean[]{false}, false, true));

        m_queryArray.add(new QueryData("Average Age of Death", "SELECT AVG(2020 - YEAR(dob)) as average_deceased_age FROM Personal_Information p JOIN Cases c USING (people_id) WHERE status = 'deceased';", null, null, false, false));

        m_queryArray.add(new QueryData("Highest Recovery State", "SELECT s.state_name, COUNT(*) as recovered FROM Cases c JOIN State_Dep_Health s USING (state_dep_health_state_id) WHERE c.status = 'recovered' GROUP BY state_dep_health_state_id" +
                " order by recovered DESC limit 1; ", null, null, false, false));

        m_queryArray.add(new QueryData("Inventory check", "SELECT h.hospital_name, s.item_id, s.inventory, i.item_name, i.description FROM Supply s INNER JOIN Hospitals h ON h.hospital_id = s.hospital_id " +
                "INNER JOIN Item_Description i ON i.item_id = s.item_id WHERE s.inventory <= ? ", new String[]{"LOW INVENTORY"}, new boolean[]{false}, false, true));


        m_queryArray.add(new QueryData("Create Check-in", "INSERT INTO Checkins (people_id, business_id, checkin_date) values(?,?,?)", new String[]{"people_id", "business_id", "checkin_date YYYY-MM-DD hh:mm:ss"}, new boolean[]{false, false, false, false}, true, true));

        m_queryArray.add(new QueryData("Case Update", "UPDATE Cases SET status = ? WHERE (case_id = ?)", new String[]{"status", "case_id"}, new boolean[]{false, false}, true, true));

        m_queryArray.add(new QueryData("Patient Status", "SELECT Cases.case_id, Cases.status, Personal_Information.lname, " +
                "Personal_Information.fname, Personal_Information.people_id FROM Cases join Personal_Information " +
                "using(people_id) where case_id = ?", new String[]{"case_id"}, new boolean[]{false}, false, true));

        String tracingParam = "people_id (which person you want to know may have had contact, same as others)";
        m_queryArray.add(new QueryData("Get Contact Tracer", "SELECT Checkins.business_id, Checkins.checkin_date, Cases.date_diagnosed, Cases.people_id FROM Cases JOIN People USING (people_id) JOIN Checkins ON " +
                "Checkins.people_id = People.people_id AND (Checkins.business_id IN (SELECT business_id FROM Checkins WHERE people_id = ?)) AND (CAST(Checkins.checkin_date AS DATE) IN" +
                " (SELECT CAST(Checkins.checkin_date AS DATE) FROM Checkins WHERE people_id = ?)) AND Cases.people_id <> ? AND CAST(Cases.date_diagnosed AS DATE) - CAST(Checkins.checkin_date AS DATE)" +
                " <= 14;", new String[]{tracingParam, tracingParam, tracingParam}, new boolean[]{false, false, false}, false, true));

        m_queryArray.add(new QueryData("Search by State", "SELECT COUNT(*) AS Total_Tests, s.state_name FROM Tests JOIN State_Dep_Health s USING (state_dep_health_state_id) " +
                "where s.state_name like ? GROUP BY s.state_name; ", new String[]{"state_name like"}, new boolean[]{true}, false, true));

    }


    public int GetTotalQueries() {
        return m_queryArray.size();
    }

    public int GetParameterAmtForQuery(int queryChoice) {
        QueryData e = m_queryArray.get(queryChoice);
        return e.GetParmAmount();
    }

    public String GetParamText(int queryChoice, int parmnum) {
        QueryData e = m_queryArray.get(queryChoice);
        return e.GetParamText(parmnum);
    }

    public String GetQueryText(int queryChoice) {
        QueryData e = m_queryArray.get(queryChoice);
        return e.GetQueryString();
    }

    public String GetQueryDescription(int queryChoice) {
        QueryData e = m_queryArray.get(queryChoice);
        return e.GetQueryDescription();
    }

    /**
     * Function will return how many rows were updated as a result
     * of the update query
     *
     * @return Returns how many rows were updated
     */

    public int GetUpdateAmount() {
        return m_updateAmount;
    }

    /**
     * Function will return ALL of the Column Headers from the query
     *
     * @return Returns array of column headers
     */
    public String[] GetQueryHeaders() {
        return m_jdbcData.GetHeaders();
    }

    /**
     * After the query has been run, all of the data has been captured into
     * a multi-dimensional string array which contains all the row's. For each
     * row it also has all the column data. It is in string format
     *
     * @return multi-dimensional array of String data based on the resultset
     * from the query
     */
    public String[][] GetQueryData() {
        return m_jdbcData.GetData();
    }

    public String GetProjectTeamApplication() {
        return m_projectTeamApplication;
    }

    public boolean isActionQuery(int queryChoice) {
        QueryData e = m_queryArray.get(queryChoice);
        return e.IsQueryAction();
    }

    public boolean isParameterQuery(int queryChoice) {
        QueryData e = m_queryArray.get(queryChoice);
        return e.IsQueryParm();
    }


    public boolean ExecuteQuery(int queryChoice, String[] parms) {
        boolean bOK = true;
        QueryData e = m_queryArray.get(queryChoice);
        bOK = m_jdbcData.ExecuteQuery(e.GetQueryString(), parms, e.GetAllLikeParams());
        return bOK;
    }

    public boolean ExecuteUpdate(int queryChoice, String[] parms) {
        boolean bOK = true;
        QueryData e = m_queryArray.get(queryChoice);
        bOK = m_jdbcData.ExecuteUpdate(e.GetQueryString(), parms);
        m_updateAmount = m_jdbcData.GetUpdateCount();
        return bOK;
    }


    public boolean Connect(String szHost, String szUser, String szPass, String szDatabase) {

        boolean bConnect = m_jdbcData.ConnectToDatabase(szHost, szUser, szPass, szDatabase);
        if (bConnect == false)
            m_error = m_jdbcData.GetError();
        return bConnect;
    }

    public boolean Disconnect() {
        // Disconnect the JDBCData Object
        boolean bConnect = m_jdbcData.CloseDatabase();
        if (bConnect == false)
            m_error = m_jdbcData.GetError();
        return true;
    }

    public String GetError() {
        return m_error;
    }

    public void ShowQueries() {
        System.out.println("\nQueries displayed below: \n");

        for (int i = 0; i < this.GetTotalQueries(); i++) {
            System.out.println(i + 1 + ". " + this.GetQueryDescription(i));
        }
        System.out.println();
    }

    /**
     * This method tracks what the user enters into the console. If the user types in a single integer relating
     * to a specific query, the query will run. If the query is not an integer, or the query number does not exist,
     * it will print an error. This method also has the ability to print out the SQL statements for each function
     * by typing in "show # # #". It can show sql statements for one or multiple queries. If any of these arguments
     * are not valid queries, it will print an error. Finally this function has the ability to add custom queries,
     * with user SQL, parameters, whether its an action query, and if it has like parameters.
     */
    public void RunUserInputQuery() {
        String[] parmstring = {};
        String[] headers;
        String[][] allData;
        boolean Ok = true;

        Scanner userIn = new Scanner(System.in);
        System.out.print("Query to run (type 'custom' for custom query to add, type 'show 2' to show SQL for query 2): ");
        String argument = userIn.nextLine();

        // create new query
        if (argument.equals("custom")) {
            System.out.print("Type new query description: ");
            String description = userIn.nextLine();
            System.out.print("Type SQL Statement: ");
            String SQLStatement = userIn.nextLine();
            System.out.print("Does the query have parameters? (y/n) ");
            boolean isParam = userIn.nextLine().equals("y");
            System.out.print("Is the query an action query? (y/n) ");
            boolean isAction = userIn.nextLine().equals("y");
            String[] param = null;
            boolean[] likeparam = null;
            if (isParam) {
                System.out.print("Type parameter names with spaces delimiting them: ");
                String paramString = userIn.nextLine();
                if (!paramString.contains(" ")) {
                    param = new String[]{null};
                    param[0] = paramString;
                } else {
                    param = paramString.split(" ");
                }
                likeparam = new boolean[param.length];
                for (int i = 0; i < likeparam.length; i++) {
                    likeparam[i] = false;
                }
                System.out.print("Are any parameters 'like'? (y/n) ");

                if (userIn.nextLine().equals("y")) {
                    System.out.print("What index is the parameter (first parameter has index of 0, space indexes): ");
                    String likeString = userIn.nextLine();
                    if (!likeString.contains(" ")) {
                        likeparam[Integer.parseInt(likeString)] = true;
                    } else {
                        String[] stringLikeArr = likeString.split(" ");
                        for (int j = 0; j < stringLikeArr.length; j++) {
                            if (!isParsable(stringLikeArr[j]) || Integer.parseInt(stringLikeArr[j]) >= param.length) {
                                System.out.println("Error: enter integer values less than number of params");
                                break;
                            }
                            likeparam[Integer.parseInt(stringLikeArr[j])] = true;
                        }
                    }
                }

            }
            m_queryArray.add(new QueryData(description, SQLStatement, param, likeparam, isAction, isParam));
            System.out.println("Success: " + description + " successfully added to queries.");

            // user wants to show SQL statements
        } else if (argument.contains("show")) {
            String[] args = argument.split(" ");
            int nextNum;
            for (int i = 1; i < args.length; i++) {
                if (!isParsable(args[i])) {
                    System.out.println("Error: Enter in a valid query number");
                } else if (Integer.parseInt(args[i]) >= m_queryArray.size()) {
                    System.out.println("Error: User input query number does not exist");
                } else {
                    nextNum = Integer.parseInt(args[i]);
                    System.out.println("SQL Statement for query number " + nextNum + ": " + this.GetQueryText(nextNum));
                }
            }

            // if the user enters something other than an integer, custom, or show
        } else if (!isParsable(argument)) {
            System.out.println("Error: Either enter in a query number or 'custom'");
        } else {

            int queryNum = Integer.parseInt(argument);

            // if the query number does not exist
            if (queryNum > m_queryArray.size()) {
                System.out.println("Error: User input query number does not exist");
            } else {

                // checks if the query is a parameter query
                if (this.isParameterQuery(queryNum - 1)) {
                    int nAmt = this.GetParameterAmtForQuery(queryNum - 1);
                    parmstring = new String[nAmt];
                    for (int i = 0; i < nAmt; i++) {
                        System.out.print("Value for " + this.GetParamText(queryNum - 1, i) + ": ");
                        parmstring[i] = userIn.next();
                    }
                }

                // checks if the query is an action query
                if (this.isActionQuery(queryNum - 1)) {
                    if (queryNum == 12 && !parmstring[0].equals("deceased") && !parmstring[0].equals("recovered") && !parmstring[0].equals("active")) {
                        System.out.println("Case can only be updated with status of 'deceased', 'recovered', or 'active'");
                    } else {
                        Ok = this.ExecuteUpdate(queryNum - 1, parmstring);
                        if (Ok) {
                            if (this.GetUpdateAmount() == 0) { // if no rows were updated
                                System.out.println("Error: No rows updated");
                            } else {
                                System.out.println("Rows affected = " + this.GetUpdateAmount());
                            }
                        } else {
                            System.out.println("Error: Action Query failed");
                        }
                    }

                } else {
                    Ok = this.ExecuteQuery(queryNum - 1, parmstring);

                    if (Ok) {

                        headers = this.GetQueryHeaders();
                        allData = this.GetQueryData();

                        if (allData[0][0].equals("")) { // if the SELECT statement returned no results
                            System.out.println("Error: No results for given query");

                        } else {

                            // print out the results in a table
                            CommandLineTable results = new CommandLineTable();
                            results.setShowVerticalLines(true);
                            results.setHeaders(headers);
                            int numResults = allData.length;
                            for (int j = 0; j < numResults; j++) {
                                results.addRow(allData[j]);
                            }
                            results.print();
                        }
                    } else {
                        System.out.println("Error: Execute Query failed");
                    }
                }
            }
        }


    }

    /**
     * This checks if a string can be converted into an int
     * @param input a string to check if it can be an int
     * @return true if input can be converted into an int
     */
    public static boolean isParsable(String input) {
        try {
            Integer.parseInt(input);
            return true;
        } catch (final NumberFormatException e) {
            return false;
        }
    }


    private QueryJDBC m_jdbcData;
    private String m_error;
    private String m_projectTeamApplication;
    private ArrayList<QueryData> m_queryArray;
    private int m_updateAmount;



    public static void main(String[] args) {
        Console con = System.console();
        String hostname;
        final QueryRunner queryrunner = new QueryRunner();
        boolean console = false;
        // if -console argument isn't included then run GUI
        if (args.length == 0) {
            java.awt.EventQueue.invokeLater(new Runnable() {
                public void run() {

                    new QueryFrame(queryrunner).setVisible(true);
                }
            });
        } else {
            if (args[0].equals("-console")) {

                Scanner userIn = new Scanner(System.in);

                System.out.println("Connect to database using console");
                System.out.print("host: ");
                String host = userIn.nextLine();
                System.out.print("user: ");
                String user = userIn.nextLine();
                System.out.print("password: ");
                String password = userIn.nextLine();
                System.out.print("database: ");
                String database = userIn.nextLine();
                boolean connect = queryrunner.Connect(host, user, password, database);

                if (!connect) {
                    System.out.println("Connection failed!");

                } else {

                    System.out.println("\nConnected to Database!\n");
                    queryrunner.ShowQueries();
                    queryrunner.RunUserInputQuery();

                    System.out.print("Type 'exit' to quit, anything else to continue: ");

                    // control loop for console
                    while (!userIn.nextLine().equals("exit")) {
                        queryrunner.ShowQueries();
                        queryrunner.RunUserInputQuery();
                        System.out.print("Type 'exit' to quit, anything else to continue: ");

                    }
                    System.out.println("Thanks for using the COVID Tracking system!");


                }
            }
        }
        queryrunner.Disconnect();

    }
}
