# A Sentiment Analysis Tool Chain for 18<sup>th</sup> Century Periodicals

```bibtex
@incollection{koncar2022sentiment,
  title = {A {{Sentiment Analysis Tool Chain}} for 18th {{Century Periodicals}}},
  booktitle = {Fabrikation von {{Erkenntnis}}. {{Experimente}} in Den {{Digital Humanities}}},
  author = {Koncar, Philipp and Geiger, Bernhard C. and Glatz, Christina and Hobisch, Elisabeth and Sarić, Sanja and Scholger, Martina and Völkl, Yvonne and Helic, Denis},
  date = {2022-01-15},
  publisher = {{Melusina Press}},
  location = {{Esch-sur-Alzette}},
  url = {https://doi.org/10.26298/ezpg-wk34},
  isbn = {978-2-919815-25-8},
  langid = {english}
}
```

## Abstract

Sentiment analysis is a common task in natural language processing (NLP) and aims for the automatic and computational identification of emotions, attitudes and opinions expressed in textual data.
While Sentiment analysis is typically tailored for and widely used in the context of Web data, the application to literary texts is still challenging due to the lack of methods dedicated to languages other than English and from earlier times.
With the work we present here, we not only introduce new sentiment dictionaries for French, Italian and Spanish periodicals of the 18<sup>th</sup> century, but also build a freely and publicly available tool chain based on Jupyter Notebooks, enabling researchers to apply our dictionary creation process and sentiment analysis methods to their own material and projects. 
The proposed tool chain comprises two different parts: (i) the optional creation of sentiment dictionaries and (ii) the actual sentiment analysis.

All content that originates in this publications is either licensed under [CC BY-SA 4.0](LICENSE_CCBYSA40.txt) or, where applicable, [GPL 3.0](LICENSE_GPL30.txt). This does not apply to content or code, coming from other sources or attached with other licenses.
## Contents

This repository includes the following data:

* _code/dictionary_creation/1_seed_words/:_ This directory contains the Jupyter Notebooks to conduct the first step (extraction, annotation and selection of seed words) of the dictionary creation pipeline.
* _code/dictionary_creation/2_word_embeddings/:_ This directory contains the Jupyter Notebooks to conduct the second step (training and evaluation of word embeddings) of the dictionary creation pipeline.
* _code/dictionary_creation/3_classification/:_ This directory contains the Jupyter Notebooks to conduct the third step (training and evaluation of classifiers) of the dictionary creation pipeline.
* _code/sentiment_analysis/:_ This directory contains the Jupyter Notebooks to conduct the actual sentiment analysis. 
* _data/processed_data/classifier_evaluation/:_ This directory contains the annotated words used for the classifier evaluation.
* _data/processed_data/dictionaries/:_ This directory contains ready-to-use sentiment dictionaries for 18<sup>th</sup> century French, Italian and Spanish.
* _data/processed_data/example_texts/:_ This directory contains pickled pandas DataFrames with example texts in French, Italian and Spanish.
* _data/processed_data/seed_words/:_ This directory contains the selected seed words used for the classification task.
* _data/processed_data/word_pairs/:_ This directory contains the lists of word pairs used for the evaluation of word2vec models.
* _data/processed_data/word2vec_models/:_ This directory contains the pretrained word2vec models.
* _data/raw_data/example_texts/:_ This directory contains a ZIP archive with plain text files used to create the pandas DataFrames containing example texts.
* _miscellaneous/:_ This directory contains additional material, such as images, used for illustration purposes.
* _publication.ipynb:_ This Jupyter Notebook represents the main publication in which we explain the proposed method in detail and provide illustrative examples.
* _requirements.txt:_ This file lists all the necessary Python packages necessary to run the tool chain (typically used in conjunction with `pip`).

## Configuration

We recommend you to install [Anaconda](https://www.anaconda.com/), as it comes pre-bundled with most required packages.

### Python

The Jupyter Notebooks presented in this repository require Python 3.8.5.

If you simply want to use our dictionaries and Jupyter Notebooks to analyze sentiment of your texts, you need to have the following additional Python packages installed:
* pandas 1.1.3
* Matplotlib 3.2.0
* Seaborn 0.11.0
* tqdm 4.50.2
* nltk 3.5
* Jupyter Notebook 6.1.4 or Jupyter Lab 2.2.6
* ipywidgets 7.5.1

In order to create dictionaries yourself, you need to have the following additional Python packages installed:
* pandas 1.1.3
* gensim 3.8.3 (needs to be [installed separately](https://anaconda.org/anaconda/gensim); you best use `pip install gensim` in an Anaconda prompt to install gensim as the conda package is not up-to-date and cannot be installed with Anaconda running Python 3.8)
* sklearn 0.23.2
* nltk 3.5
* spacy 2.2.3 (needs to be [installed separately](https://anaconda.org/conda-forge/spacy))
* stop-words 2018.7.23 (needs to be [installed separately](https://anaconda.org/conda-forge/stop-words))
* Jupyter Notebook 6.1.4 or Jupyter Lab 2.2.6
* ipywidgets 7.5.1

Note that we tested our Jupyter Notebooks with the versions stated above.
While older and newer versions may work, the outcome may be impaired.
 
### Dataset

If you want to create dictionaries based on your own data, make sure that you have a decent amount of text.
The more text, the better the output.
Also, make sure that you cleaned your data and that each document is contained in a single *.txt* file with UTF-8 encoding.

Our ready-to-use dictionaries and models base on Spectator periodicals published during the 18<sup>th</sup> century.
In particular, we leverage **The Spectators in the international context**, a digital scholarly edition project which aims on building a central repository for spectator periodicals (Ertler et al. 2011, Scholger 2018).
The annotated periodicals follow the XML-based Text Encoding Initiative (TEI) standard (Consortium 2021), which provides a vocabulary on how to represent texts in digital form, and are publicly available through the [digital edition](https://gams.uni-graz.at/spectators).
This dataset contains multiple languages, but we set our focus on French, Italian and Spanish, as these three languages have the largest collections.
For this purpose, we extracted texts from TEI encoded files into plain *.txt* files.

### Hardware

Please keep in mind that your machine needs adequate hardware depending on the amount of text you want to consider.
This is especially important for the dictionary creation tool chain (e.g., we used a machine with 24 cores and 750 GB RAM and computations still took up to three days).
If you just want to analyze sentiment using existing dictionaries, a computer with common hardware should suffice.

## Contributors

name: Philipp Koncar
orcid: 0000-0001-5492-0644
institution: Institute of Interactive Systems and Data Science, Graz University of Technology
e-mail: koncar@tuta.io
address: Inffeldgasse 16c, 8010, Graz, Austria

name: Bernhard C. Geiger
orcid: 0000-0003-3257-743X
institution: Know-Center GmbH
e-mail: geiger@ieee.org
address: Inffeldgasse 13, 8010, Graz, Austria

name: Christina Glatz
orcid: 
institution: Institute of Romance Studies, University of Graz
e-mail: christina.glatz@uni-graz.at
address: Merangasse 70, 8010 Graz, Austria

name: Elisabeth Hobisch
orcid: 0000-0002-6051-4500
institution: Institute of Romance Studies, University of Graz
e-mail: elisabeth.hobisch@uni-graz.at
address: Merangasse 70, 8010 Graz, Austria

name: Sanja Sarić
orcid: 0000-0002-0802-6999
institution: Centre for Information Modelling - Austrian Centre for Digital Humanities, University of Graz
e-mail: sanja.saric@uni-graz.at
address: Elisabethstraße 59/III, 8010 Graz, Austria

name: Martina Scholger
orcid: 0000-0003-1438-3236
institution: Centre for Information Modelling - Austrian Centre for Digital Humanities, University of Graz
e-mail: martina.scholger@uni-graz.at
address: Elisabethstraße 59/III, 8010 Graz, Austria

name: Yvonne Völkl
orcid: 0000-0001-8625-3663
institution: Institute of Romance Studies, University of Graz
e-mail: yvonne.voelkl@uni-graz.at
address: Merangasse 70, 8010 Graz, Austria

name: Denis Helic
orcid: 0000-0003-0725-7450
institution: Institute of Interactive Systems and Data Science, Graz University of Technology
e-mail: dhelic@tugraz.at
address: Inffeldgasse 16c, 8010, Graz, Austria

## References

TEI Consortium (2021-04-09), TEI P5: Guidelines for Electronic Text Encoding and Interchange. Version 4.2.2. http://www.tei-c.org/Guidelines/P5/. Accessed 7 May 2021.

Ertler, K.-D., Fuchs A., Fischer-Pernkopf M., Hobisch E., Scholger M., Völkl Y. (2011) The Spectators in the international context. https://gams.uni-graz.at/spectators. Accessed 16 Feb 2021.

Scholger, M. (2018) “Spectators” in the International Context - A Digital Scholarly Edition In: Discourses on Economy in the Spectators, 229–247.. Verlag Dr. Kovac, Hamburg.

