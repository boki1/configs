function previewmd() {
	input_file=${1:-README.md}
	pandoc -f markdown ${input_file} -t pdf | zathura -
}
