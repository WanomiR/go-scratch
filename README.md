# Scratch
Super ligthweight container.
1. Compile the app statically with static dependencies link:
```bash
CG0_ENABLED=0 GOOS=linux GOARCH=arm64 go build -a -installsuffix cgo -ldflags '-s' -o server
```
2. Build an image:
```bash
docker build -t testserver .
```
\*the final argument is the context we want to send to Docker Engine  

3. Create and run container:
```bash
docker run --rm -p 8080:8080 testserver
```

4. Check the API:
```bash
curl -XPOST localhost:8080/helloworld -d '{"name":"Wanomir"}'
```
