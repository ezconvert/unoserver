FROM alpine:3.12
RUN apk add --update --no-cache libreoffice
EXPOSE 2002
VOLUME /data
CMD [
    "soffice",
    "--headless",
    "--invisible",
    "--nocrashreport",
    "--nodefault",
    "--nofirststartwizard",
    "--nologo",
    "--norestore",
    "--accept=socket,host=0.0.0.0,port=2002,tcpNoDelay=1;urp;StarOffice.ComponentContext"
]
