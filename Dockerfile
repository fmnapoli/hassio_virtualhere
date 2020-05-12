ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on

WORKDIR /

# Install requirements for add-on
RUN apk add --no-cache wget usbutils \
    && wget https://virtualhere.com/sites/default/files/usbserver/vhusbdarm  \
    && chmod a+x ./vhusbdarm \
    && apk del wget

CMD [ "./vhusbdarm" ]