FROM python
RUN pip install Flask jsonify
RUN git clone https://github.com/rahulsatheeshs1/Devops
WORKDIR greetapi
CMD ["python","./app.py"]

