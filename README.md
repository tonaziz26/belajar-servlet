## How To Run Locally

Clone the project

Go to the project directory

```bash
  cd belajar-servlet
```

Build docker image

```bash
  docker build -t belajar-servlet:0.1 .
```

Run docker container

```bash
    docker run -p 8080:8080 belajar-servlet:0.1
```

Open browser and go to

```
http://localhost:8080/belajar-servlet/sayhello
```
