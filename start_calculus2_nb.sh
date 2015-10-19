# This is just a simple shell script intended to save repetitious typing of the same commands daily.
# All it does is start the Jupyter Notebook server for the this course's notbooks.

# Configure profile to use (hard-coded temporarily)
MY_PROFILE='mac2312_calculusII'

# Navigate to the Calculus II course Jupyter Notebook directory
# TODO: move this directory under the course's primary directory - i.e. ~/Documents/College/....
# cd ${HOME}/Projects/Python/iPython_Jupyter_Notebooks/Courses/Calculus_II_MAC2312/

# Start Jupyter Notebook server
ipython notebook --profile=$MY_PROFILE
