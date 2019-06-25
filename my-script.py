import os
	
file_name = 'test_file.txt'
file_size = 1024 # size in bytes
with open(file_name, "wb") as f:
    f.write(os.urandom(file_size))

print(os.getcwd())
