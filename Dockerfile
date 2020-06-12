FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y libreoffice-writer \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 2002
CMD [ "soffice",            \
    "--headless",           \
    "--invisible",          \
    "--nocrashreport",      \
    "--nodefault",          \
    "--nofirststartwizard", \
    "--nologo",             \
    "--norestore",          \
    "--accept=socket,host=0.0.0.0,port=2002,tcpNoDelay=1;urp;StarOffice.ComponentContext" \
]
