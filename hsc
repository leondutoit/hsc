
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


while (( "$#" )); do
    case $1 in
        # informational
        100) echo "Continue"; shift ;;
        101) echo ""; shift ;;
        102) echo ""; shift ;;
        # success
        200) echo ""; shift ;;
        201) echo ""; shift ;;
        202) echo ""; shift ;;
        203) echo ""; shift ;;
        204) echo ""; shift ;;
        205) echo ""; shift ;;
        206) echo ""; shift ;;
        207) echo ""; shift ;;
        208) echo ""; shift ;;
        226) echo ""; shift ;;
        # redirection
        300) echo ""; shift ;;
        301) echo ""; shift ;;
        302) echo ""; shift ;;
        303) echo ""; shift ;;
        304) echo ""; shift ;;
        305) echo ""; shift ;;
        306) echo ""; shift ;;
        307) echo ""; shift ;;
        308) echo ""; shift ;;
        # client error
        400) echo ""; shift ;;
        401) echo ""; shift ;;
        402) echo ""; shift ;;
        403) echo ""; shift ;;
        404) echo ""; shift ;;
        405) echo ""; shift ;;
        406) echo ""; shift ;;
        407) echo ""; shift ;;
        408) echo ""; shift ;;
        409) echo ""; shift ;;
        410) echo ""; shift ;;
        411) echo ""; shift ;;
        412) echo ""; shift ;;
        413) echo ""; shift ;;
        414) echo ""; shift ;;
        415) echo ""; shift ;;
        416) echo ""; shift ;;
        417) echo ""; shift ;;
        418) echo ""; shift ;;
        421) echo ""; shift ;;
        422) echo ""; shift ;;
        423) echo ""; shift ;;
        424) echo ""; shift ;;
        426) echo ""; shift ;;
        428) echo ""; shift ;;
        429) echo ""; shift ;;
        431) echo ""; shift ;;
        451) echo ""; shift ;;
        # server error
        500) echo ""; shift ;;
        501) echo ""; shift ;;
        502) echo ""; shift ;;
        503) echo ""; shift ;;
        504) echo ""; shift ;;
        506) echo ""; shift ;;
        507) echo ""; shift ;;
        508) echo ""; shift ;;
        510) echo ""; shift ;;
        511) echo ""; shift ;;
        # unofficial codes
        # restful codes
        # internet information services
        # nginx
        # cloudflare
        -h | --help)    shift; printf "%s\n" "$todoer_help"; exit 0 ;;
        *) break ;;
    esac
done
