bh_epoch()
{
	[[ $# -eq 0 ]] && date +%s

	if [[ "$1" =~ ^[0-9]+$ ]]; then
		[[ $BASHACKS_OS = Darwin ]] && date -ur $1 || date -d @$1
	fi
}
