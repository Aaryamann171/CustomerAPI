import tornado.web
import customer
import json

class SearchHandler(tornado.web.RedirectHandler):
    def initialize(self, customers):
        self.customers = customers
        
    def get(self):
        name = self.get_argument('name')
        # location = self.get_argument('location')
        result = self.customers.search_customer(name)
        if result:
            self.write("customer title: {0} was found!".format(name))
            self.set_status(200)
        else:
            self.write("Customer: '{0}' was not found.".format(name))
            self.set_status(404)
