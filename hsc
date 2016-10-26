
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
        100) info "100 - Continue." "The server has received the request headers and the client should proceed to send the request body."; shift ;;
        101) info "101 - Switching Protocols." "The requester has asked the server to switch protocols and the server has agreed to do so."; shift ;;
        102) info "102 - Processing. WebDav." "This code indicates that the server has received and is processing the request, but no response is available yet."; shift ;;
        # success
        200) info "200 - OK." "Standard response for successful HTTP requests."; shift ;;
        201) info "201 - Created." "The request has been fulfilled, resulting in the creation of a new resource."; shift ;;
        202) info "202 - Accepted." "The request has been accepted for processing, but the processing has not been completed."; shift ;;
        203) info "203 - Non-Authoritative Information." "The server is a transforming proxy that received a 200 OK from its origin, but is returning a modified version of the origin's response."; shift ;;
        204) info "204 - No Content." "The server successfully processed the request and is not returning any content."; shift ;;
        205) info "205 - Reset Content." "Success, no content returned, but unlike a 204 response, this response requires that the requester reset the document view."; shift ;;
        206) info "206 - Partial Content." "The server is delivering only part of the resource due to a range header sent by the client."; shift ;;
        207) info "207 - Multi-Status. WebDav." "The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made."; shift ;;
        208) info "208 - Already Supported. WebDav." "The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again."; shift ;;
        226) info "226 - IM Used." "The server has fulfilled a request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance."; shift ;;
        # redirection
        300) info "300 - Multiple Choices." "Indicates multiple options for the resource from which the client may choose (via agent-driven content negotiation)."; shift ;;
        301) info "301 - Moved Permanently." "This and all future requests should be directed to the given URI."; shift ;;
        302) info "302 - Found." ""; shift ;;
        303) info "303 - See Other." "The response to the request can be found under another URI using a GET method."; shift ;;
        304) info "304 - Not Modified." "Indicates that the resource has not been modified since the version specified by the request headers If-Modified-Since or If-None-Match."; shift ;;
        305) info "305 - Use Proxy." "The requested resource is available only through a proxy, the address for which is provided in the response."; shift ;;
        306) info "306 - Switch Proxy." "No longer used. Originally meant 'Subsequent requests should use the specified proxy'."; shift ;;
        307) info "307 - Temporary Redirect." "In this case, the request should be repeated with another URI; however, future requests should still use the original URI."; shift ;;
        308) info "308 - Permanent Redirect." "The request and all future requests should be repeated using another URI. 307 and 308 parallel the behaviors of 302 and 301, but do not allow the HTTP method to change. So, for example, submitting a form to a permanently redirected resource may continue smoothly."; shift ;;
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
