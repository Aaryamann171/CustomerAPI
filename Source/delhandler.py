 
import tornado.web
import customer
import json


class DelHandler(tornado.web.RequestHandler):
    def initialize(self, customers):
        self.customers = customers
        
    def get(self):
        name = self.get_argument("name")
        result = self.customers.del_customer(name)
        if result:
            self.write("Deleted customer name: {0} succsessfully".format(name))
            self.set_status(200)
        else:
            self.write("Customer '{0}' not found".format(name))
            self.set_status(404)