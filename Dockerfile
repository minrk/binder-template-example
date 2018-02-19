FROM jupyter/base-notebook
ADD templates /etc/jupyter/binder_templates
USER root
ENV BINDER_URL=https://mybinder.org/v2/gh/binder-examples/requirements/master
ADD extra_notebook_config.py /tmp/extra_notebook_config.py
RUN cat /tmp/extra_notebook_config.py >> /etc/jupyter/jupyter_notebook_config.py && \
    rm /tmp/extra_notebook_config.py
USER $NB_USER
