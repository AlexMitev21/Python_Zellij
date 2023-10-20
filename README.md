# Zellij

## Zellij Test ENV Setup

This document explains a detailed setup for the Zellij, and the Zellij ENV locally: 
First you need to download the file of the actual Zellij. You can have to options: 

* Option A)
- You can open a terminal navigate to the directory where you want the Zellij to be created.
- The you tun the following command: 
```
git clone https://github.com/AlexMitev21/My_Zellij.git
```
If you are asked for a API token, you can ask the owenr of the repository to generate one. 

* Option B)
- You can navigate to the repository <i> [https://github.com/AlexMitev21/My_Zellij]</i>
- In the upper-right corner there is a button that says: "Code"
![Screenshot 2023-10-11 at 10 56 52](https://github.com/AlexMitev21/Zellij-Test-Env/assets/143809569/3d27c2a8-cc17-408c-867b-428d8e606adb)


- Click on the Code Button and then there is an option that says <i> Extract Zip </i>
- Click on that and it will download a zip file
- Extract the file, and then you see a folder called <i>My_Zellij</i>

## Start the Development Env

1. Choose a text editor program, for an instance the Visual Code Studio.
2. Open the Visual Code Studio, and then open then directory of the Zellij-master.
   
<img width="1437" alt="Screenshot 2023-10-03 at 15 29 28" src="https://github.com/AlexMitev21/Zellij-Test-Env/assets/143809569/539b14d3-fedf-499c-bec6-fd54a242011f">


4. Open the <i> Dockerfile </i> and then replace its content with the following: 

```
# Use an official Python runtime as a parent image
FROM python:3.8.10

# Set the working directory to /Users/amitev/Zellij-master
WORKDIR /Users/amitev/Zellij-master

# Copy the requirements.txt file to the container
COPY requirements.txt requirements.txt

# Install Python dependencies from requirements.txt
RUN pip3 install -r requirements.txt

# Copy the rest of your project files to the container
COPY . .

# Set the FLASK_APP environment variable (set this when running the container)
# ENV FLASK_APP=/Users/amitev/Zellij-master/website/main.py

# Command to run the Flask application
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
```

5. Edit the <i>docker-compose.yml</i> You can open it, and replace it with the following: 

```
version: '3.1'

services:
  db:
    image: mysql:5.7.34
    ports:
      - "3306:3306"
    environment:
      MYSQL_ROOT_PASSWORD: test
      MYSQL_DATABASE: test
      MYSQL_USER: test
      MYSQL_PASSWORD: test
    volumes:
      - "./mysql-data:/var/lib/mysql"
    command: mysqld --sql_mode=""    
    platform: linux/x86_64
  phpmyadmin:
    image: phpmyadmin
    restart: always
    ports:
      - 8070:80
    environment:
      - PMA_ARBITRARY=1
```

6. Navigate to the instance folder, and edit the <i> config.py </i>

```
SECRET_KEY="MQCpsXZBNm3cXtbFQ3y6g6ZA"
SYMMETRIC_KEYFILE="../Zellij-Master/secret/secretkeyfile.bytes"
UPLOAD_FOLDER="/Zellij/uploads"
```
8. Afterwards, you navigate to the directory where the Zellij-master has been installed and you shall create a new virtual ENV: 
```
python -m venv FOLDER_NAME
python -m flask --app ./website/main.py  run --host=0.0.0.0 --reload
```
REMEMBER! Replace the <i> FOLDER_NAME </i> with the actual name of the folder

9. Lastly, you shall open a terminal and run the following commands:

```
docker-compose up

```
10. The website must be runnig and you should be able to access it to the localhost:8080


### Set up Zellij on PythonAnywhere

1. **Create a PythonAnywhere Account**

   Start by creating a new account on [PythonAnywhere](https://www.pythonanywhere.com/).

2. **Dashboard Overview**

   After signing up and logging in, you'll be redirected to the "Dashboard" page, which provides an overview of all your files and projects.

3. **Create a Virtual Environment**

   - From the top right corner of the page, select the "Console" menu.
   - Click on "Bash" to open a command-line terminal.
   - Create a virtual environment by executing the following command:
     ```bash
     mkvirtualenv venv
     ```

4. **Upload Your Project**

   - Locate the folder where your Zellij project is saved on your local computer.
   - Compress that folder into a .zip file.

5. **File Upload**

   - Navigate to the "Files" menu page.
   - Upload the created .zip file.

6. **Extract Your Project**

   - Go back to the command-line terminal (Bash).
   - Execute the following commands to extract your project files:
     ```bash
     cd ~/.virtualenvs/venv/
     ls -l
     unzip Zellij.zip
     ```
     Note: The `unzip` command may vary depending on the name of your zip file.

7. **Web Application Setup**

   - Leave the command-line terminal and navigate to the "Web" menu page.
   - Create a new web app with manual configuration.

8. **Configure Source Code**

   - Scroll down to the "Code" section.
   - Provide the directory for your web page code in the "Source code" field.

9. **WSGI Configuration**

   - Select the WSGI configuration file for your web app.
   - Remove all lines above the "++++++++++ FLASK ++++++++" section.
   - Continue by removing the comments from the following lines:
     - Import sys
     - Path = '…' (replace with your virtual environment path)
     - Remove comments from the next four lines and replace the "from …" with your main file.

10. **Create SQL Database**

    - Select the "Database" menu item on the PythonAnywhere Dashboard.
    - Initialize an SQL database.
    - On the new page it redirects you, scroll down to the "Create a database" option and enter a database name.

11. **SQL Database Setup**

    - Navigate to the "Console" menu and create a new SQL bash.
    - Run the following commands to set up the database:
      ```bash
      mysql -u username -h hostAddress -p
      ```
      Note: Both the username and host address can be found on the database page.
      - Copy and paste the exported local database file into the command line.

12. **Testing the Web App**

    - Go back to the "Web" application menu and open the web page.
    - If the web app is not working, you can open the error log files from the web page menu.
    - Common error to check for is a database connection issue or missing Python libraries that need to be installed.

That's it! You've successfully set up the Zellij project on PythonAnywhere.
