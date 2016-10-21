
#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Missing arguments, exiting"
    echo "For help do: hsc -h or hsc --help"
    exit 1
fi

help_text="\

    hsc - a helper providing useful info about HTTP status.

    Based on information from: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

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
        102) info "Processing." "This code indicates that the server has received and is processing the request, but no response is available yet."; shift ;;
        # success
        200) info "" ""; shift ;;
        201) info "" ""; shift ;;
        202) info "" ""; shift ;;
        203) info "" ""; shift ;;
        204) info "" ""; shift ;;
        205) info "" ""; shift ;;
        206) info "" ""; shift ;;
        207) info "" ""; shift ;;
        208) info "" ""; shift ;;
        226) info "" ""; shift ;;
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
