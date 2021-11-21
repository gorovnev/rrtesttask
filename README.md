# Description

The goal is to make a web application with Flutter that utilizes Microsoft Dataverse as data source.

All details in task description.

# Build instructions

1. Go to project folder

```
cd rrtesttask
```

2. Create .env file with following variables:

```
DYN365_URL=<url>
TENANT_ID=<tenant id>
CLIENT_ID=<client id>
```

3. Create Flutter web build

```
flutter build web
```

4. Create docker image

```
docker build -t webserver .
```

5. Run a container

```
docker run -it --rm -d -p 3000:80 --name web webserver
```
