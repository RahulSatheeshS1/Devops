FROM python
RUN pip install Flask jsonify
RUN git clone https://github.com/RahulSatheeshS1/Devops.git
WORKDIR Devops
EXPOSE 5000
CMD ["python","./app.py"]

