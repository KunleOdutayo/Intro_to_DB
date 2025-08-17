import mysql.connector
from mysql.connector import errorcode

try:
    connect =  mysql.connector.connect(
        host = "localhost",
        user = "your_username",
        password = "your_password"
    )

    cursor = connect.cursor()
    create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
    cursor.execute(create_db_query)

    print("Database 'alx_book_store' created succesfully!")

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Error: ACCESS denied. Check your username and password.")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Error: Database does not exist.")
    else:
        print(f"Error: {err}")

finally:
    if 'cursor' in locals() and cursor is not None:
        cursor.close()
    if 'connect' in locals() and connect is not None:
        connect.close()