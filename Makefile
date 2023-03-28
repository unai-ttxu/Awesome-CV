.PHONY: examples

CC = xelatex
EXAMPLES_DIR = examples
RESUME_DIR = examples/resume
CV_DIR = examples/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, coverletter cv cv-fash cv-com cv-store cv-store-en resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv-fash.pdf: $(EXAMPLES_DIR)/cv-fash.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv-com.pdf: $(EXAMPLES_DIR)/cv-com.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv-store.pdf: $(EXAMPLES_DIR)/cv-store.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv-store-en.pdf: $(EXAMPLES_DIR)/cv-store-en.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
