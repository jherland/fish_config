function prompt_pwd --description 'Print the current working directory, shortened to fit the prompt'
	# fish default:
	# echo $PWD | sed -e "s|^$HOME|~|" -e 's-\([^/.]\)[^/]*/-\1/-g'
	echo $PWD | sed -e "s|^$HOME|~|"
end
