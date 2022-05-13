# trx2junit-docker

Dockerize the [trx2junit](https://github.com/gfoidl/trx2junit) dotnet tool so we can use it on demand without actually installing it.

## Usage

Convert trx files in local folder under linux:

```
docker run -it --rm -v `pwd`:/data embix/trx2junit-docker:latest /data
```

or in Windows/Powershell

```
docker run -it --rm -v ${PWD}:/data embix/trx2junit-docker:latest /data/*
```
