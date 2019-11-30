import unittest
import xmlrunner

start_dir = '/home/niit/Desktop/customer'

def runner(output='python_tests_xml'):
    return xmlrunner.XMLTestRunner(
        output=output
        )

def find_tests():
    #return unittest.TestLoader().discover(start_dir, 'test_addcustomer.py')
    return unittest.defaultTestLoader.discover(start_dir, pattern='test_*.py')
if __name__ == '__main__':
    runner().run(find_tests())