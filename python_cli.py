from peewee import *
from playhouse.shortcuts import model_to_dict, dict_to_model


db = PostgresqlDatabase('contact_book', user='vvsuji', password='', host='localhost', port='5432')

class BaseModel(Model):
  class Meta:
    database = db

class contacts(BaseModel):
  first_name = CharField()
  last_name = CharField()
  
class info(BaseModel):
  email = CharField()
  phone_number = IntegerField()
  contact_id = IntegerField()

db.connect()

def contact_list_start():
  print("Hello! This is your contact list : ")
  answer = input("What would you like to do? View Contacts(v), Add Contacts(a), Update Contacts(u), Delete Contacts(d) ").lower()
  
  if answer == "v":
    contact = contacts.select()
    information = info.select()
    print([(contacts.first_name, contacts.last_name) for contacts in contact])
    print([(info.email, info.phone_number) for info in information])
    
contact_list_start()