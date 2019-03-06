function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
    new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}
# Jank because git versions
function recent_branches() {
   git for-each-ref --sort=-committerdate refs/heads/
}
