
#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Missing arguments, exiting"
    echo "For help do: hsc -h or hsc --help"
    exit 1
fi

help_text="\

    hsc - a helper providing useful info about HTTP status codes.

    Based on https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

    Usage: hsc [code]

    Options:
        -h, --help      Print this help.
"

info() {
    printf "\n\t$1\n\t$2\n\n"
}

while (( "$#" )); do
    case $1 in
        # informational
        100) info "Continue." "The server has received the request headers and the client should proceed to send the request body."; shift ;;
        101) info "Switching Protocols." "The requester has asked the server to switch protocols and the server has agreed to do so."; shift ;;
        102) info "Processing. WebDav." "This code indicates that the server has received and is processing the request, but no response is available yet."; shift ;;
        # success
        200) info "OK." "Standard response for successful HTTP requests."; shift ;;
        201) info "Created." "The request has been fulfilled, resulting in the creation of a new resource."; shift ;;
        202) info "Accepted." "The request has been accepted for processing, but the processing has not been completed."; shift ;;
        203) info "Non-Authoritative Information." "The server is a transforming proxy that received a 200 OK from its origin, but is returning a modified version of the origin's response."; shift ;;
        204) info "No Content." "The server successfully processed the request and is not returning any content."; shift ;;
        205) info "Reset Content." "Success, no content returned, but unlike a 204 response, this response requires that the requester reset the document view."; shift ;;
        206) info "Partial Content." "The server is delivering only part of the resource due to a range header sent by the client."; shift ;;
        207) info "Multi-Status. WebDav." "The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made."; shift ;;
        208) info "Already Supported. WebDav." "The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again."; shift ;;
        226) info "IM Used." "The server has fulfilled a request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance."; shift ;;
        # redirection
        300) info "" ""; shift ;;
        301) info "" ""; shift ;;
        302) info "" ""; shift ;;
        303) info "" ""; shift ;;
        304) info "" ""; shift ;;
        305) info "" ""; shift ;;
        306) info "" ""; shift ;;
        307) info "" ""; shift ;;
        308) info "" ""; shift ;;
        # client error
        400) info "" ""; shift ;;
        401) info "" ""; shift ;;
        402) info "" ""; shift ;;
        403) info "" ""; shift ;;
        404) info "" ""; shift ;;
        405) info "" ""; shift ;;
        406) info "" ""; shift ;;
        407) info "" ""; shift ;;
        408) info "" ""; shift ;;
        409) info "" ""; shift ;;
        410) info "" ""; shift ;;
        411) info "" ""; shift ;;
        412) info "" ""; shift ;;
        413) info "" ""; shift ;;
        414) info "" ""; shift ;;
        415) info "" ""; shift ;;
        416) info "" ""; shift ;;
        417) info "" ""; shift ;;
        418) info "" ""; shift ;;
        421) info "" ""; shift ;;
        422) info "" ""; shift ;;
        423) info "" ""; shift ;;
        424) info "" ""; shift ;;
        426) info "" ""; shift ;;
        428) info "" ""; shift ;;
        429) info "" ""; shift ;;
        431) info "" ""; shift ;;
        451) info "" ""; shift ;;
        # server error
        500) info "" ""; shift ;;
        501) info "" ""; shift ;;
        502) info "" ""; shift ;;
        503) info "" ""; shift ;;
        504) info "" ""; shift ;;
        506) info "" ""; shift ;;
        507) info "" ""; shift ;;
        508) info "" ""; shift ;;
        510) info "" ""; shift ;;
        511) info "" ""; shift ;;
        # unofficial codes
        # restful codes
        # internet information services
        # nginx
        # cloudflare
        -h | --help)    shift; printf "%s\n" "$todoer_help"; exit 0 ;;
        *) break ;;
    esac
done
