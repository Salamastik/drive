
# for GPU support
FROM quay.io/docling-project/docling-serve-cu124
# USE_CPU_ONLY=true
# FROM quay.io/docling-project/docling-serve

USER root

RUN pip install hf_transfer 

# RUN docling-tools models download  layout tableformer code_formula picture_classifier smolvlm
# RUN docling-tools models download  smoldocling smoldocling_mlx  && rm -r /opt/app-root/src/.cache/huggingface/
# RUN docling-tools models download  granite_vision && rm -r /opt/app-root/src/.cache/huggingface/
########
## models in the default image 
# layout tableformer - in the official models
# picture_classifier easyocr
########

########
#granit_vision - in the vlm api , so don't need to download it here , smolvlm
#code_formula , smoldocling
#smoldocling_mlx - no need , its for apple
########

# model list
# ds4sd--DocumentFigureClassifier EasyOcr ibm-granite--granite-vision-3.1-2b-preview ds4sd--docling-models ds4sd--SmolDocling-256M-preview HuggingFaceTB--SmolVLM-256M-Instruct

# עדכון והתקנת תלויות OCR עבור עברית, אנגלית וערבית
RUN dnf update -y && \
dnf install -y \
tesseract \
tesseract-osd \
tesseract-langpack-eng \
tesseract-langpack-heb \
tesseract-langpack-ara && \
dnf clean all
ENV TESSDATA_PREFIX=/usr/share/tesseract/tessdata/


ENV DOCLING_ARTIFACTS_PATH=/opt/app-root/src/.cache/docling/models 
ENV DOCLING_SERVE_ENABLE_UI=true
ENV DOCLING_ENABLE_REMOTE_SERVICES=true

# ENV DOCLING_SERVE_MAX_DOCUMENT_TIMEOUT=300
# ENV DOCLING_SERVE_ENG_LOC_NUM_WORKERS
# ENV DOCLING_SERVE_MAX_SYNC_WAIT=300

