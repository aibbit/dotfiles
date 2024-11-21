# man() {
#     env LESS_TERMCAP_mb=$'\E[01;31m' \
#         LESS_TERMCAP_md=$'\E[01;38;5;74m' \
#         LESS_TERMCAP_me=$'\E[0m' \
#         LESS_TERMCAP_se=$'\E[0m' \
#         LESS_TERMCAP_so=$'\E[38;5;246m' \
#         LESS_TERMCAP_ue=$'\E[0m' \
#         LESS_TERMCAP_us=$'\E[04;38;5;146m' \
#         man "$@"
# }


man() {
    env LESS_TERMCAP_mb=$'\E[1m\E[32m'\
        LESS_TERMCAP_mh=$'\E[2m'\
        LESS_TERMCAP_mr=$'\E[7m'\
        LESS_TERMCAP_md=$'\E[1m\E[36m'\
        LESS_TERMCAP_ZW=""\
        LESS_TERMCAP_us=$'\E[4m\E[1m\E[37m'\
        LESS_TERMCAP_me=$'\E(B\E[m'\
        LESS_TERMCAP_ue=$'\E[24m\E(B\E[m'\
        LESS_TERMCAP_ZO=""\
        LESS_TERMCAP_ZN=""\
        LESS_TERMCAP_se=$'\E[27m\E(B\E[m'\
        LESS_TERMCAP_ZV=""\
        LESS_TERMCAP_so=$'\E[1m\E[33m\E[44m'\
        man "$@"
}
