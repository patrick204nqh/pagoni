FROM golang:1.18.4
        
WORKDIR /var/www/backend
        
COPY go.* ./
        
RUN go mod download
        
COPY . ./
        
RUN go build -o main .
        
CMD ["./main"]