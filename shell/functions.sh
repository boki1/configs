function previewmd() {
	input_file=${1:-README.md}
	pandoc -f markdown ${input_file} -t pdf | zathura -
}

function cmake-format-all() {
	input_dirs=${1:-.}
	find ${input_dirs} -name '*.cmake' -exec cmake-format -i {} \;
}

function clang-format-all() {
	input_dirs=${1:-.}
	find ${input_dirs} -type f -iname \*\.cpp -o -iname \*\.hpp -o -iname \*\.c -o -iname \*\.h -exec clang-format -i {} \;
}
