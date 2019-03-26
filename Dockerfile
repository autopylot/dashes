FROM jupyter/minimal-notebook

RUN conda install --quiet --y \
    'sqlalchemy' \
    'beautifulsoup4' \
    'plotly' \
    'dash' \
    'colorlover' \
    'selenium' \
    'matplotlib' \
    'seaborn' \
    'pandas' \
    'numpy' \
    && conda clean -y -all

# Set the working directory to /app
WORKDIR /home/jovyan/workspace

# Create mount point for external volumes
VOLUME /home/jovyan/workspace

# Make port 8888 available to outside world
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
