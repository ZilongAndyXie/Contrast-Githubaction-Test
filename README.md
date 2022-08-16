# Vulnderads
Prerequisit is a running java version
## Local Setup for Windows Environment
There two ways of getting access to the vulnerads application. Either you use the supplied VM by Viadee or you setup the application locally on your device.
### Installations
Gradle

First we need to make sure that gradle is installed on our machine. [Here](https://gradle.org/install/) the installation is structured from the official gradle website.
In my case I downloaded the complete gradle package of the version v6.8.3. which is compatible with the java 14.0.2. These both version are also used in the VM. On other cases please check the [version matrix](https://docs.gradle.org/current/userguide/compatibility.html).
- Unpack the dowloaded file
- Create a new directory C:\Gradle with File Explorer.
- In File Explorer right-click on the This PC (or Computer) icon, then click Properties -> Advanced System Settings -> Environmental Variables
- Under System Variables select Path, then click Edit. Add an entry for C:\Gradle\gradle-7.5.1\bin. Click OK to save
- Run `gradle -v` to run gradle and display the version

Postgresql
[Download the installer](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) with the right Postgresql version.
- Follow the steps of the installer. This [website](https://www.postgresqltutorial.com/postgresql-getting-started/install-postgresql/) instructs single steps of the installer setting
- ![Components selection](https://user-images.githubusercontent.com/109356068/184843473-5cc65265-b76d-4651-8df8-356cba6cdfd3.png) in my preference I selected pgAdmin 4.
- Verify the installation with `psql` command in the command prompt, whether this command is known.

After cloning this git repository.

Database setup
Either Execute the steps in the file under setup -> setup_postgres.txt or do follow all steps via pgAdmin 4 panel.
- Launch pgAdmin 4.
- Go to the “Dashboard” tab. In the “Quick Link” section, click “Add New Server” to add a new connection.
- ![image](https://user-images.githubusercontent.com/109356068/184847735-3acb010e-cbdd-4b89-80af-5368e53a5824.png)
  - Select the “Connection” tab in the “Create-Server” window.
  - Enter your server’s IP address in the “Hostname/Address” field.
  - Specify the “Port” as “5432”.
  - Enter the name of the database in the “Database Maintenance” field.
  - Enter your username as "training" and password (use the same password you used when previously configuring the server to accept remote connections) for the database.
  - Click “Save” to apply the configuration.
 
 Starting the server using `./gradlew bootRun` command
 The tables in the database should be created automatically and a connection should be established. (Make sure that the database is running).
