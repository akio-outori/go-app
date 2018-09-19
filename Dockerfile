#FROM alpine

FROM scratch

ADD src/main /
CMD ["/main"]
EXPOSE 8080
