FROM scratch
MAINTAINER ioan.romadin@gmail.com

EXPOSE 8080

COPY ./server .

ENTRYPOINT ["./server"]
