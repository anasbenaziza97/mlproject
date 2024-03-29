FROM condaforge/miniforge3
#WORKDIR /app
RUN pip install mlflow>=1.0 \
    && pip install azure-storage-blob==12.3.0 \
    && pip install numpy==1.21.2 \
    && pip install scipy \
    && pip install pandas==1.3.3 \
    && pip install scikit-learn==0.24.2 \
    && pip install cloudpickle
COPY . ./

CMD python train.py 0.9 0.9

