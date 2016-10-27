
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
        302) info "302 - Found." "This is an example of industry practice contradicting the standard: popular browsers implemented 302 with the functionality of a 303 so 303 and 307 were added to distinguish them."; shift ;;
        303) info "303 - See Other." "The response to the request can be found under another URI using a GET method."; shift ;;
        304) info "304 - Not Modified." "Indicates that the resource has not been modified since the version specified by the request headers If-Modified-Since or If-None-Match."; shift ;;
        305) info "305 - Use Proxy." "The requested resource is available only through a proxy, the address for which is provided in the response."; shift ;;
        306) info "306 - Switch Proxy." "No longer used. Originally meant 'Subsequent requests should use the specified proxy'."; shift ;;
        307) info "307 - Temporary Redirect." "In this case, the request should be repeated with another URI; however, future requests should still use the original URI."; shift ;;
        308) info "308 - Permanent Redirect." "The request and all future requests should be repeated using another URI. Does not allow the HTTP method to change, so submitting a form may continue smoothly."; shift ;;
        # client error
        400) info "400 - Bad Request." "The server cannot or will not process the request due to an apparent client error."; shift ;;
        401) info "401 - Unauthorized." "Similar to 403 Forbidden, but specifically for use when authentication is required and has failed or has not yet been provided."; shift ;;
        402) info "402 - Payment Required." "Reserved for future use. The original intention was that this code might be used as part of some form of digital cash or micropayment scheme."; shift ;;
        403) info "403 - Forbidden." "The request was a valid request, but the server is refusing to respond to it."; shift ;;
        404) info "404 - Not Found." "The requested resource could not be found but may be available in the future. Subsequent requests by the client are permissible."; shift ;;
        405) info "405 - Method Not Allowed." "A request method is not supported for the requested resource."; shift ;;
        406) info "406 - Not Acceptable." "The requested resource is capable of generating only content not acceptable according to the Accept headers sent in the request."; shift ;;
        407) info "407 - Proxy Authentication Required." "The client must first authenticate itself with the proxy."; shift ;;
        408) info "408 - Request Timeout." "The server timed out waiting for the request."; shift ;;
        409) info "409 - Conflict." "Indicates that the request could not be processed because of conflict in the request, such as an edit conflict between multiple simultaneous updates."; shift ;;
        410) info "410 - Gone." "Indicates that the resource requested is no longer available and will not be available again. When a resource has been intentionally removed and the resource should be purged."; shift ;;
        411) info "411 - Length Required." "The request did not specify the length of its content, which is required by the requested resource."; shift ;;
        412) info "412 - Precodition Failed." "The server does not meet one of the preconditions that the requester put on the request."; shift ;;
        413) info "413 - Payload Too Large." "The request is larger than the server is willing or able to process."; shift ;;
        414) info "414 - URI Too Long." "The URI provided was too long for the server to process. E.g. data being encoded as a query-string of a GET request, in which case it should be converted to a POST request."; shift ;;
        415) info "415 - Unsupported Media Type." "The request entity has a media type which the server or resource does not support."; shift ;;
        416) info "416 - Range Not Satisfiable." "The client has asked for a portion of the file (byte serving), but the server cannot supply that portion."; shift ;;
        417) info "417 - Expectation Failed." "The server cannot meet the requirements of the Expect request-header field."; shift ;;
        418) info "418 - I'm a teapot." "This code was defined in 1998 as one of the traditional IETF April Fools' jokes, in RFC 2324."; shift ;;
        421) info "421 - Misdirected Request." "The request was directed at a server that is not able to produce a response."; shift ;;
        422) info "422 - Unprocessable Entity. WebDav." "The request was well-formed but was unable to be followed due to semantic errors."; shift ;;
        423) info "423 - Locked. WebDav." "The resource that is being accessed is locked."; shift ;;
        424) info "424 - Failed Dependency. WebDav." "The request failed due to failure of a previous request."; shift ;;
        426) info "426 - Upgrade Required." "The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field."; shift ;;
        428) info "428 - Precodition Required." "The origin server requires the request to be conditional."; shift ;;
        429) info "429 - Too Many Requests." "The user has sent too many requests in a given amount of time. Intended for use with rate-limiting schemes."; shift ;;
        431) info "431 - Request Header Fields Too Large." "The server is unwilling to process the request because either an individual header field, or all the header fields collectively, are too large."; shift ;;
        451) info "451 - Unavailable For Legal Reasons." "A server operator has received a legal demand to deny access to a resource or to a set of resources that includes the requested resource. Reference to the novel Farenheit 451."; shift ;;
        # server error
        500) info "500 - Internal Server Error." "A generic error message, given when an unexpected condition was encountered and no more specific message is suitable."; shift ;;
        501) info "501 - Not Implemented." "The server either does not recognize the request method, or it lacks the ability to fulfill the request. Usually this implies future availability."; shift ;;
        502) info "502 - Bad Gateway." "The server was acting as a gateway or proxy and received an invalid response from the upstream server."; shift ;;
        503) info "503 - Service Unavailable." "The server is currently unavailable (because it is overloaded or down for maintenance)."; shift ;;
        504) info "504 - Gateway Timeout." "The server was acting as a gateway or proxy and did not receive a timely response from the upstream server."; shift ;;
        505) info "505 - HTTP Version Not Supported." "The server does not support the HTTP protocol version used in the request."
        506) info "506" "Transparent content negotiation for the request results in a circular reference."; shift ;;
        507) info "507 - Insufficient Storage. WebDav." "The server is unable to store the representation needed to complete the request."; shift ;;
        508) info "508 - Loop Detected. WebDav." "The server detected an infinite loop while processing the request."; shift ;;
        510) info "510 - Not Extended." "Further extensions to the request are required for the server to fulfill it."; shift ;;
        511) info "511 - Network Authentication Required." "The client needs to authenticate to gain network access. Intended for use by intercepting proxies used to control access to the network."; shift ;;
        # unofficial codes
        # restful codes
        # internet information services
        # nginx
        # cloudflare
        -h | --help)    shift; printf "%s\n" "$help_text"; exit 0 ;;
        *) break ;;
    esac
done
