import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish the connection to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',         # Replace with your MySQL server host
            user='root',              # Replace with your MySQL username
            password='password'       # Replace with your MySQL password
        )
        
        if connection.is_connected():
            print("Connected to MySQL server successfully.")
            
            # Create a cursor object
            cursor = connection.cursor()
            
            # SQL statement to create the database if it does not exist
            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
            
            # Execute the SQL statement
            cursor.execute(create_db_query)
            
            # Commit the changes
            connection.commit()
            
            print("Database 'alx_book_store' created successfully!")
    
    except mysql.connector.Error
    
    finally:
        # Close the cursor and connection
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()
            print("MySQL connection is closed.")

if __name__ == "__main__":
    create_database()
