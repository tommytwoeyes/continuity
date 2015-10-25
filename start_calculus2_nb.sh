# This is just a simple shell script intended to save repetitious typing of the same commands daily.
# All it does is start the Jupyter Notebook server for the this course's notbooks.

# Uncomment to use a different config file (since Jupyter doesn't)
# support profile switching like iPython did.
# Default profile is here: ~/.jupyter/jupyter_notebook_config.py
# NOTE: if you uncomment this, comment out the launcher line below,
#       because this command launches Jupyter
#JUPYTER_CONFIG_DIR=./jupyter_config jupyter notebook

# Navigate to the Calculus II course Jupyter Notebook directory
# TODO: move this directory under the course's primary directory - i.e. ~/Documents/College/....
# cd ${HOME}/Projects/Python/iPython_Jupyter_Notebooks/Courses/Calculus_II_MAC2312/

# Start iPython Notebook server
#ipython notebook --profile=$MY_PROFILE

# Start Jupyter Notebook server
echo "Starting Jupyter Notebook server ..."
jupyter notebook

