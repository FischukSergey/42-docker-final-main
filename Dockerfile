FROM golang:1.22
WORKDIR /app
#копируем все файлы, включая DB
COPY . .
#грузим зависимости
RUN go mod tidy
#монтируем приложение
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint12
CMD ["/sprint12"]