# =====================================================
# Exercise 24 - DynamoDB CRUD Application
# =====================================================

import boto3

# Connect to DynamoDB
dynamodb = boto3.resource(
    "dynamodb",
    region_name="us-east-1"
)

table = dynamodb.Table("Customer")


# ---------------- CREATE ----------------
def create_customer():

    customer_id = input("Enter Customer ID : ")
    name = input("Enter Name        : ")
    city = input("Enter City        : ")

    table.put_item(
        Item={
            "CustomerId": customer_id,
            "Name": name,
            "City": city
        }
    )

    print("\nCustomer Created Successfully")


# ---------------- READ ----------------
def read_customer():

    customer_id = input("Enter Customer ID : ")

    response = table.get_item(
        Key={
            "CustomerId": customer_id
        }
    )

    if "Item" in response:
        print("\nCustomer Details")
        print("----------------")
        print("Customer ID :", response["Item"]["CustomerId"])
        print("Name        :", response["Item"]["Name"])
        print("City        :", response["Item"]["City"])
    else:
        print("\nCustomer Not Found")


# ---------------- UPDATE ----------------
def update_customer():

    customer_id = input("Enter Customer ID : ")
    city = input("Enter New City     : ")

    table.update_item(
        Key={
            "CustomerId": customer_id
        },
        UpdateExpression="SET City = :c",
        ExpressionAttributeValues={
            ":c": city
        }
    )

    print("\nCustomer Updated Successfully")


# ---------------- DELETE ----------------
def delete_customer():

    customer_id = input("Enter Customer ID : ")

    table.delete_item(
        Key={
            "CustomerId": customer_id
        }
    )

    print("\nCustomer Deleted Successfully")


# ---------------- MENU ----------------
while True:

    print("\n========== CUSTOMER MANAGEMENT ==========")
    print("1. Create Customer")
    print("2. Read Customer")
    print("3. Update Customer")
    print("4. Delete Customer")
    print("5. Exit")

    choice = input("\nEnter Choice : ")

    if choice == "1":
        create_customer()

    elif choice == "2":
        read_customer()

    elif choice == "3":
        update_customer()

    elif choice == "4":
        delete_customer()

    elif choice == "5":
        print("\nThank You")
        break

    else:
        print("\nInvalid Choice")