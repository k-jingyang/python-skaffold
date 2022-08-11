FROM python:3.9 as builder

COPY . .
RUN python setup.py bdist_wheel

FROM python:3.9 as prod
COPY --from=builder dist ./dist/
RUN apt -y update
RUN apt -y install python3-pip
RUN ls dist/
RUN pip install testpackage -f dist
CMD ["python", "-m", "testpackage"]