# Zellīj
An ontological toolkit

## Getting Started
Zellīj is a web app, and as such is designed to be deployed to a web server, such as (for example) PythonAnywhere.com.

## Deploy to PythonAnywhere.com
### Deploy the database
1) Log in to PythonAnywhere using the Zellīj site administrator credentials.
2) Click on the "Databases" tab.
3) Create a MySQL database.
4) Click on the `databasename$default` to open the database console.
5) Paste the contents of the file `demo db/test.sql` into the console to populate the database.

### Deploy the website
1) Log in to PythonAnywhere using the Zellīj site administrator credentials.
2) Click on the "Consoles" tab.
3) Click on "Bash" item.
4) Create a virtual environment for the python requirements by typing `mkvirtualenv venv`
5) Clone the repository
6) Type `cd Zellij`.
7) Type `pip3 install -r requirements.txt`.
8) Update the `website/main.py` to support pythonanywhere 
    ```diff
   diff --git a/website/main.py b/website/main.py
    index f528ace..c535544 100644
    --- a/website/main.py
    +++ b/website/main.py
    @@ -12,7 +12,7 @@ def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
    SECRET_KEY="MQCpsXZBNm3cXtbFQ3y6g6ZA",
    -            SYMMETRIC_KEYFILE=os.path.join(app.instance_path, "../../../ZellijSecrets", "secretkeyfile.bytes"),
    +            SYMMETRIC_KEYFILE=os.path.join(app.instance_path, "../../Zellij/secret", "secretkeyfile.bytes"),
                 DATABASE_USER="root",
                 DATABASE_PASSWORD="",
                 DATABASE_NAME="zellij$website",
    @@ -59,6 +59,8 @@ def create_app(test_config=None):

         return app

    +app = create_app()
    +
    if __name__ == '__main__':
    #from website import db
    #db.init_db()    # might want this for database in the future, for running on PythonAnywhere from their bash script.
    @@ -71,4 +73,4 @@ if __name__ == '__main__':
    from website import testpages
    app.register_blueprint(testpages.bp)
    app.run()
     ```
9) Update the `website/db.py` to have the new database credentials
    ```diff
    diff --git a/website/db.py b/website/db.py
    index df1b27f..1e24dcc 100644
    --- a/website/db.py
    +++ b/website/db.py
    @@ -18,7 +19,7 @@ from website.DataScraper import DataScraper
     def get_db():
         if "db" not in g:
             g.db = MySQLdb.connect(
    -            user="test", passwd="test", db="test", port=3306, host="localhost"
    +            user="dbuser", passwd="dbpass", db="dbname$default", port=3306, host="dbhost"
             )
         return g.db
    ```
10) Go to the `Web` tab and scroll to the `Code` section.
11) Update the `Source code` and `Working Directory` to point to the `Zellij` folder.
12) Press on the `WSGI configuration file` to open it.
13) Scroll to the `FLASK` section and update it to look like the following snippet:
    ```python
    # +++++++++++ FLASK +++++++++++
    # Flask works like any other WSGI-compatible framework, we just need
    # to import the application.  Often Flask apps are called "app" so we
    # may need to rename it during the import:
    #
    #
    import sys
    #
    ## The "/home/michaelgriniezakis" below specifies your home
    ## directory -- the rest should be the directory you uploaded your Flask
    ## code to underneath the home directory.  So if you just ran
    ## "git clone git@github.com/myusername/myproject.git"
    ## ...or uploaded files to the directory "myproject", then you should
    ## specify "/home/michaelgriniezakis/myproject"
    path = 'pathto/Zellij'
    if path not in sys.path:
        sys.path.append(path)

    from website.main import app as application  # noqa
    #
    # NB -- many Flask guides suggest you use a file called run.py; that's
    # not necessary on PythonAnywhere.  And you should make sure your code
    # does *not* invoke the flask development server with app.run(), as it
    # will prevent your wsgi file from working.
    ```
    and press save
14) Go back to the `Web` tab and press reload

## Running locally for development
### Precursors
1) Download your preferred IDE (mine is Eclipse; I may mention it by name later but any Python IDE will do).
2) Download this project.

### Run locally
1) Right-click on the file **main.py** and click the "Run" button in your IDE (probably looks like a green "play" button).
2) Browse to your local URL using the port your IDE tells you it's running on; i.e. 127.0.0.1:5000.

### Extra stuff available to developer
* Because this is a work in progress, error messages on the server will contain full stack trace and debug information. But because that's production, all that info is encrypted into a secure string. This string can be reported to you by users, and can be _decrypted_ by this application running locally. When running locally you'll be able to go to http://127.0.0.1:5000/errordecoder and paste in the encrypted string, and see the full error message.

