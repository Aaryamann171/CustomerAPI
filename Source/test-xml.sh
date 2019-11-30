SET PATH=%PATH%;/usr/lib/python3.7;/usr/lib/python3.7/venv/scripts
del /home/aryan/Desktop/CustomerAPI/python_tests_xml/*.*
del /home/aryan/Desktop/CustomerAPI/Source/coverage.xml
cd /home/aryan/Desktop/CustomerAPI/Source
REM /usr/lib/python3.7/python runtests.py
REM /usr/lib/python3.7/python -m coverage run -m pytest && coverage xml -o coverage.xml
REM /usr/lib/python3.7/python -m coverage html -d coverage
python runtests.py
python -m coverage run -m pytest && coverage xml -o coverage.xml
copy /home/aryan/Desktop/CustomerAPI/Source python_tests_xml\*.* /home/aryan/Desktop/CustomerAPI/python_tests_xml
copy /home/aryan/Desktop/CustomerAPI/Source/coverage.xml /home/aryan/Desktop/CustomerAPI
