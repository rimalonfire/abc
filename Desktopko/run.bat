@echo on
javac -cp .;C:/xampp/tomcat/lib/servlet-api.jar;classes -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/web/Authenticate.java

javac -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/model/Database.java


javac -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/model/Retdata.java

javac -cp .;C:/xampp/tomcat/lib/servlet-api.jar;classes -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/web/SignUp.java

javac -cp .;C:/xampp/tomcat/lib/servlet-api.jar;classes -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/web/GetStatus.java

javac -cp .;C:/xampp/tomcat/lib/servlet-api.jar;classes -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/web/Retresult.java

javac -cp .;C:/xampp/tomcat/lib/servlet-api.jar;C:/xampp/tomcat/lib/mail.jar;classes -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/web/CustomerDetails.java

javac -cp .;C:/xampp/tomcat/lib/servlet-api.jar;classes -d C:/xampp/tomcat/webapps/airline_webapp/WEB-INF/classes src/com/example/web/SelectFlight.java




pause
C:/xampp/catalina_start.bat

pause