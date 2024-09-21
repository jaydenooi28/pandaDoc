FROM python:3.10
LABEL "Author"="Jayden"
LABEL  "Project"="Data Science"
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app
COPY . /app
RUN ls -al /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser", "--NotebookApp.token=''"]
