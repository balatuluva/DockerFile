openssl genrsa -out user1.key 2048
openssl req -new -key user1.key -out user1.csr -subj "/CN=user1/O=development"
openssl x509 -req -in user1.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out user1.crt -days 365

openssl genrsa -out user2.key 2048
openssl req -new -key user2.key -out user2.csr -subj "/CN=user2/O=production"
openssl x509 -req -in user2.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out user2.crt -days 365

openssl genrsa -out bala.key 2048
openssl req -new -key bala.key -out bala.csr -subj "/CN=bala/O=clusteradmin"
openssl x509 -req -in bala.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out bala.crt -days 365