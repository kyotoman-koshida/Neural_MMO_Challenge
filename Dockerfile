FROM neurips2022nmmo/submission-runtime:latest

WORKDIR /tmp/install

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

#ここは修正しない
WORKDIR /home/aicrowd
COPY tool.py tool.py
COPY my-submission my-submission
