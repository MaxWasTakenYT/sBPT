#!/bin/bash
# sBPT - simple Bash Program Template ; by jstmax!
# (un)Licensed by the Unlicense, for more information, please refer to <https://unlicense.org>

# Notes:
# To skip the hassle of removing every comment before starting to code, use the `templateNoComments.sh` instead.
# If you find any errors, report them to me in issues - I'm still pretty new to Bash
# I added the `-e` argument to every `echo` just because a user coming from [basically every other programming language] would want to use characters like `\n` to add a new line, but it isn't needed.

usage() {
    # This, very important. The only part of your code that will help the user understand how to utilize your program
    echo -e "usage: $0 \n[--test | -t > Description for the argument]\n [--help | -h > e.g. Outputs usage and exits.]\n"
}

if [[ "$#" -eq 0 ]]; then
    # If no argument was given, this will run
    echo -e "no arguments were given"
fi

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --test|-t) # If the `--test` or `-t` argument gets parsed, this will run
            echo -e "test parsed"
            shift
            ;;
        --help|-h) # Note: I do not recommend you to remove this `help` argument, buut, if you do want to remove it then PLEASE add a way to check for usage
          usage
          shift
          ;;
        # Other cases here, (just copy the examples' syntax)

        *) # This goes at the very end, (After all of your arguments)

            # If the argument parsed isn't in the list above, this will run | Same as `-h`, I do not recommend you to remove this, but only to edit the message (your choice)
            echo -e "unknown option: $1"
            usage
            ;;
        esac # Closes the case
done # Ends the loop
