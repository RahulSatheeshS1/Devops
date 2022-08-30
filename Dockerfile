FROM python
RUN pip install Flask jsonify
RUN git clone https://github.com/RahulSatheeshS1/Devops.git
WORKDIR Devops
CMD ["python","./app.py"]

