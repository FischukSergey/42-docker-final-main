FROM golang:1.22
WORKDIR /app
COPY go.mod go.sum ./
#грузим зависимости
RUN go mod download 
#копируем все файлы, включая DB
COPY . .
#монтируем приложение
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint11
CMD ["/sprint11"]