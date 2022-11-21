<<COMMENTS

Input Format

You are given a CSV file where each row contains the name of a city and its state separated by a comma.

Output Format

Restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.

Sample Input

Albany, N.Y.
Albuquerque, N.M.
Anchorage, Alaska
Asheville, N.C.
Atlanta, Ga.
Atlantic City, N.J.
Austin, Texas
Baltimore, Md.
Baton Rouge, La.
Billings, Mont.
Birmingham, Ala.
Bismarck, N.D.
Boise, Idaho
Boston, Mass.
Bridgeport, Conn.
Sample Output

Albany, N.Y.;Albuquerque, N.M.;Anchorage, Alaska
Asheville, N.C.;Atlanta, Ga.;Atlantic City, N.J.
Austin, Texas;Baltimore, Md.;Baton Rouge, La.
Billings, Mont.;Birmingham, Ala.;Bismarck, N.D.
Boise, Idaho;Boston, Mass.;Bridgeport, Conn.
Explanation

The given input file has been reshaped as required.

COMMENTS

#Solution1 = paste -d\; - - -
#Solution2 = paste -d';' - - - $1
#Solution3 = paste -d ';' - - -
