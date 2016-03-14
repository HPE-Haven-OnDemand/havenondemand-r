# Contains all the end points of HPE Haven OnDemand API
#
# @version 1.0
# @author Topcoder

HODApp = list(
  # connectors APIS
  CANCEL_CONNECTOR_SCHEDULE = '/cancelconnectorschedule',
  CONNECTOR_HISTORY = '/connectorhistory',
  CONNECTOR_STATUS = '/connectorstatus',
  CREATE_CONNECTOR = '/createconnector',
  DELETE_CONNECTOR = '/deleteconnector',
  START_CONNECTOR = '/startconnector',
  STOP_CONNECTOR = '/stopconnector',
  UPDATE_CONNECTOR = '/extracttext',
  RETRIEVE_CONFIG = '/updateconnector',

  # Format Conversion APIs
  EXPAND_CONTAINER = '/expandcontainer',
  OCR_DOCUMENT = '/ocrdocument',
  STORE_OBJECT = '/storeobject',
  TEXT_EXTRACTION = '/extracttext',
  VIEW_DOCUMENT = '/viewdocument',


  # Graph Analysis APIs
  GET_COMMON_NEIGHBORS = '/getcommonneighbors',
  GET_NEIGHBORS = '/getneighbors',
  GET_NODES = '/getnodes',
  GET_SHORTEST_PATH = '/getshortestpath',
  GET_SUBGRAPH = '/getsubgraph',
  SUGGEST_LINKS = '/suggestlinks',
  SUMMARIZE_GRAPH = '/summarizegraph',

  # image analysis APIs
  BARCODE_RECOGNITION = '/recognizebarcodes',
  FACE_DETECTION = '/detectfaces',
  IMAGE_RECOGNITION = '/recognizeimages',
  # ocr document already defined in format conversion


  # policy APIs
  CREATE_CLASSIFICATION = '/createclassificationobjects',
  CREATE_POLICY = '/createpolicyobjects',
  DELETE_CLASSIFICATION = '/deleteclassificationobjects',
  DELETE_POLICY = '/deletepolicyobjects',
  RETRIEVE_CLASSIFICATION = '/retrieveclassificationobjects',
  RETRIEVE_POLICY = '/retrievepolicyobjects',
  UPDATE_CLASSIFICATION = '/updateclassificationobjects',
  UPDATE_POLICY = '/updatepolicyobjects',

  # Prediction APIs
  PREDICT = '/predict',
  RECOMMEND = '/recommend',
  TRAIN_PREDICTION = '/trainpredictor',

  # Query profile and manipulation APIs
  CREATE_QUERY_PROFILE = '/createqueryprofile',
  DELETE_QUERY_PROFILE = '/deletequeryprofile',
  RETRIEVE_QUERY_PROFILE = '/retrievequeryprofile',
  UPDATE_QUERY_PROFILE = '/updatequeryprofile',

  # Search APIs
  FIND_RELATED_CONCEPTS = '/findrelatedconcepts',
  FIND_SIMILAR = '/findsimilar',
  GET_CONTENT = '/getcontent',
  GET_PARAMETRIC_VALUES = '/getparametricvalues',
  QUERY_TEXT_INDEX = '/querytextindex',
  RETRIEVE_INDEX_FIELDS = '/retrieveindexfields',

  # text analysis APIs
  AUTO_COMPLETE = '/autocomplete',
  CLASSIFY_DOCUMENT = '/classifydocument',
  CONCEPT_EXTRACTION = '/extractconcepts',
  DOCUMENT_CATEGORIZATION = '/categorizedocument',
  ENTITY_EXTRACTION = '/extractentities',
  EXPAND_TERMS = '/expandterms',
  HIGHLIGHT_TEXT = '/highlighttext',
  LANGUAGE_IDENTIFICATION = '/identifylanguage',
  SENTIMENT_ANALYSIS = '/analyzesentiment',
  TEXT_TOKENIZATION = '/tokenizetext',

  # unstructured text indexing
  ADD_TO_TEXT_INDEX = '/addtotextindex',
  CREATE_TEXT_INDEX = '/createtextindex',
  DELETE_TEXT_INDEX = '/deletetextindex',
  DELETE_FROMP_TEXT_INDEX = '/deletefromtextindex',
  INDEX_STATUS = '/indexstatus',
  LIST_RESOURCES = '/listresources',
  RESTORE_TEXT_INDEX = '/restoretextindex',

  # audio video analytics API
  SPEECH_RECOGNITION = '/recognizespeech'
)
