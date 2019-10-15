import json
from customer import Customer
#from delhander import DelHandler
from addhandler import AddHandler

customers = Customer()

def test_add():
    result = customers.add_customer('name', 'location')
    assert result