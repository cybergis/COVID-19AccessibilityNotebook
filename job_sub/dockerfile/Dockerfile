FROM python:3.8-slim-buster
# https://pythonspeed.com/articles/activate-virtualenv-dockerfile/
ENV VIRTUAL_ENV=/myapp/venv
RUN mkdir -p $VIRTUAL_ENV && python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# run the code
RUN mkdir /myapp/src
COPY src/access.py /myapp/src/access.py
RUN touch /myapp/__init__.py
RUN ls /myapp && echo "\n" && ls /myapp/src
#CMD tail -f /dev/null
CMD ["python", "/myapp/src/access.py"]
