printf "#include <string_view>\nstatic constexpr std::string_view data = \"%s\";\n" "$(cat $1)"
>&2 echo "Running generator..."