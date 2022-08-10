# chatapp

this chat tcp server is built with gRPC. messages are rpc streams.

# build server

```bash
docker build -t chatapp .
```

# run server

```bash
docker run -it -p 8080:8080 chatapp
```

# run client

```bash
go run client/main.go
```

you can run as many clients as you want.
