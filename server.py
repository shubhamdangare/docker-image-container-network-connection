import socket                  

port = 6000                   
s = socket.socket()            
host = socket.gethostname()   
print(host)  
s.bind((host, port))            
s.listen(5)                     
print('Server listening....')

while True:
    conn, addr = s.accept()     
    print('Got connection from', addr)
    filename='test_file.txt'
    f = open(filename,'rb')
    l = f.read(1024)
    while (l):
       conn.send(l)
       print('Sent ',repr(l))
       l = f.read(1024)
    f.close()

    print('Done sending')
    conn.close()


