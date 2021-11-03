ARG BERT_DIR

RUN source activate pytorch && \
    cd ${BERT_DIR} && \
    cd bert && \
    pip install -r examples/requirements.txt && \
    pip install -e . && \
    conda install intel-openmp && \
    mkdir -p /root/.local