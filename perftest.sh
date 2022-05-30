host="fabmedical-633331.mongo.cosmos.azure.com"
username="fabmedical-633331"
password="a0HpP0ZwvEO0HPoufjD8k7wiSqAeoi2qADFV6TDOJIuXnutuS8XB4pUAtDGvzQ9yRpIOMuVMylVxuK5TjKFqCA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
