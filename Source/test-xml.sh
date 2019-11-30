PATH="$PATH"
#/usr/lib/python3.7; /usr/lib/python3.7/venv/scripts
rmdir -r /home/aryan/Desktop/CustomerAPI/python_tests_xml/*.*
rmdir -r /home/aryan/Desktop/CustomerAPI/Source/coverage.xml
cd /home/aryan/Desktop/CustomerAPI/Source
# /usr/lib/python3.7/python runtests.py
# /usr/lib/python3.7/python -m coverage run -m pytest && coverage xml -o coverage.xml
# /usr/lib/python3.7/python -m coverage html -d coverage
python runtests.py
python -m coverage run -m pytest && coverage xml -o coverage.xml
mv /home/aryan/Desktop/CustomerAPI/Source python_tests_xml/*.* /home/aryan/Desktop/CustomerAPI/python_tests_xml
mv /home/aryan/Desktop/CustomerAPI/Source/coverage.xml /home/aryan/Desktop/CustomerAPI