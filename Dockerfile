## Specify the base image we need for our go application
FROM golang:1.12.0-alpine3.9
## Create an /app directory within our image that will hold our application source
RUN mkdir /app
## Copy contents from the root directory to the /app directory
ADD . /app
## Specify that any commands will be executed inside app directory
WORKDIR /app
## Run go build to compile the binary executable of the Go program
RUN go build -o main .
## Start command that kicks off our the created binary executable
CMD ["/app/main"]
## Expose port 80 for Azure App Service
EXPOSE 80