import json
from customer import Customer
#from delhander import DelHandler
from addhandler import AddHandler

customers = Customer()

def test_del():
    result1 = customers.add_customer('name', 'location')
    result2 = customers.del_customer('name2')
    assert result2