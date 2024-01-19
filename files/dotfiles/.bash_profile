# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# >>> conda initialize >>>
for CONDA_PREFIX in \
   "$HOME/miniconda3" \
   "/opt/miniconda3"
do
    if [ -f "$CONDA_PREFIX/etc/profile.d/conda.sh" ]; then
        . "$CONDA_PREFIX/etc/profile.d/conda.sh"
    fi

    if [ -f "$CONDA_PREFIX/etc/profile.d/mamba.sh" ]; then
        . "$CONDA_PREFIX/etc/profile.d/mamba.sh"
    fi
done
# <<< conda initialize <<<

