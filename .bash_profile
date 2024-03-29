# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.bash/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;