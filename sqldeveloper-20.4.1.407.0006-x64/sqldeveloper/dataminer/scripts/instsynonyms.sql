-- Usage @instsynonyms.sql 
--        
-- Description: This script installs all public synonyms referencing ODMRSYS objects.
--
-- Example:
--   @instsynonyms.sql
WHENEVER SQLERROR EXIT SQL.SQLCODE;

EXECUTE dbms_output.put_line('Start creation of public synonyms on views, packages and types. ' || systimestamp);

-- Synonyms for OBJECT TYPEs
CREATE OR REPLACE PUBLIC SYNONYM ODMR_TRANSFORM_SETTING FOR ODMRSYS.ODMR_TRANSFORM_SETTING;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_TRANSFORM_SETTINGS FOR ODMRSYS.ODMR_TRANSFORM_SETTINGS;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_OBJECT_IDS FOR ODMRSYS.ODMR_OBJECT_IDS;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_OBJECT_NAMES FOR ODMRSYS.ODMR_OBJECT_NAMES;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_OBJECT_VALUES FOR ODMRSYS.ODMR_OBJECT_VALUES;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NESTED_VARCHAR2 FOR ODMRSYS.ODMR_NESTED_VARCHAR2;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NESTED_VARCHAR2_EX FOR ODMRSYS.ODMR_NESTED_VARCHAR2_EX;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NESTED_NVARCHAR2 FOR ODMRSYS.ODMR_NESTED_NVARCHAR2;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NESTED_NVARCHAR2_EX FOR ODMRSYS.ODMR_NESTED_NVARCHAR2_EX;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NESTED_CHAR FOR ODMRSYS.ODMR_NESTED_CHAR;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NESTED_NCHAR FOR ODMRSYS.ODMR_NESTED_NCHAR;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_WORKFLOW_OBJECT_NAME_SEQ FOR ODMRSYS.ODMR$WORKFLOW_OBJECT_NAME_SEQ;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAM_POINT FOR ODMRSYS.ODMR_HISTOGRAM_POINT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAMS FOR ODMRSYS.ODMR_HISTOGRAMS;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAM_POINT_EX FOR ODMRSYS.ODMR_HISTOGRAM_POINT_EX;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAMS_EX FOR ODMRSYS.ODMR_HISTOGRAMS_EX;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_CAT FOR ODMRSYS.ODMR_PREDICTION_CAT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_CAT FOR ODMRSYS.ODMR_PREDICTION_SET_CAT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_CAT_COST FOR ODMRSYS.ODMR_PREDICTION_CAT_COST;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_CAT_COST FOR ODMRSYS.ODMR_PREDICTION_SET_CAT_COST;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM FOR ODMRSYS.ODMR_PREDICTION_NUM;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM FOR ODMRSYS.ODMR_PREDICTION_SET_NUM;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM_COST FOR ODMRSYS.ODMR_PREDICTION_NUM_COST;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM_COST FOR ODMRSYS.ODMR_PREDICTION_SET_NUM_COST;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_CAT FOR ODMRSYS.ODMR_FEATURE_CAT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_SET_CAT FOR ODMRSYS.ODMR_FEATURE_SET_CAT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_NUM FOR ODMRSYS.ODMR_FEATURE_NUM;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_SET_NUM FOR ODMRSYS.ODMR_FEATURE_SET_NUM;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_CAT FOR ODMRSYS.ODMR_CLUSTER_CAT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_SET_CAT FOR ODMRSYS.ODMR_CLUSTER_SET_CAT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_NUM FOR ODMRSYS.ODMR_CLUSTER_NUM;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_SET_NUM FOR ODMRSYS.ODMR_CLUSTER_SET_NUM;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM_COSTF FOR ODMRSYS.ODMR_PREDICTION_NUM_COSTF;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM_COSTD FOR ODMRSYS.ODMR_PREDICTION_NUM_COSTD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM_COSTN FOR ODMRSYS.ODMR_PREDICTION_NUM_COSTN;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM_F FOR ODMRSYS.ODMR_PREDICTION_NUM_F;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM_D FOR ODMRSYS.ODMR_PREDICTION_NUM_D;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_NUM_N FOR ODMRSYS.ODMR_PREDICTION_NUM_N;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM_COSTF FOR ODMRSYS.ODMR_PREDICTION_SET_NUM_COSTF;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM_COSTD FOR ODMRSYS.ODMR_PREDICTION_SET_NUM_COSTD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM_COSTN FOR ODMRSYS.ODMR_PREDICTION_SET_NUM_COSTN;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM_F FOR ODMRSYS.ODMR_PREDICTION_SET_NUM_F;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM_D FOR ODMRSYS.ODMR_PREDICTION_SET_NUM_D;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_NUM_N FOR ODMRSYS.ODMR_PREDICTION_SET_NUM_N;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_CAT_COSTPD FOR ODMRSYS.ODMR_PREDICTION_CAT_COSTPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_CATPD FOR ODMRSYS.ODMR_PREDICTION_CATPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_CAT_COSTPD FOR ODMRSYS.ODMR_PREDICTION_SET_CAT_COSTPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PREDICTION_SET_CATPD FOR ODMRSYS.ODMR_PREDICTION_SET_CATPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_NUMVD FOR ODMRSYS.ODMR_FEATURE_NUMVD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_SET_NUMVD FOR ODMRSYS.ODMR_FEATURE_SET_NUMVD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_CATVD FOR ODMRSYS.ODMR_FEATURE_CATVD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_FEATURE_SET_CATVD FOR ODMRSYS.ODMR_FEATURE_SET_CATVD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_NUMPD FOR ODMRSYS.ODMR_CLUSTER_NUMPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_SET_NUMPD FOR ODMRSYS.ODMR_CLUSTER_SET_NUMPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_CATPD FOR ODMRSYS.ODMR_CLUSTER_CATPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_CLUSTER_SET_CATPD FOR ODMRSYS.ODMR_CLUSTER_SET_CATPD;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NODE_REFERENCE FOR ODMRSYS.ODMR_NODE_REFERENCE;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_NODE_REFERENCE_SET FOR ODMRSYS.ODMR_NODE_REFERENCE_SET;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_QUALIFIED_OBJECT_NAME FOR ODMRSYS.ODMR_QUALIFIED_OBJECT_NAME;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_QUALIFIED_OBJECT_NAMES FOR ODMRSYS.ODMR_QUALIFIED_OBJECT_NAMES;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAM_POINT2 FOR ODMRSYS.ODMR_HISTOGRAM_POINT2;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAMS2 FOR ODMRSYS.ODMR_HISTOGRAMS2;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAM_POINT_EX2 FOR ODMRSYS.ODMR_HISTOGRAM_POINT_EX2;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_HISTOGRAMS_EX2 FOR ODMRSYS.ODMR_HISTOGRAMS_EX2;


-- Synonyms for VIEWs

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_DEFAULT_STOPLISTS FOR ODMRSYS.ODMR_USER_DEFAULT_STOPLISTS;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_PROJECT_WORKFLOW FOR ODMRSYS.ODMR_USER_PROJECT_WORKFLOW;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_JOBS FOR ODMRSYS.ODMR_USER_WORKFLOW_JOBS;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_LOG FOR ODMRSYS.ODMR_USER_WORKFLOW_LOG;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_REPOSITORY_PROPERTIES FOR ODMRSYS.ODMR_REPOSITORY_PROPERTIES;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_RUNNING FOR ODMRSYS.ODMR_USER_WORKFLOW_RUNNING;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_COMPLETE FOR ODMRSYS.ODMR_USER_WORKFLOW_COMPLETE;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_ALL FOR ODMRSYS.ODMR_USER_WORKFLOW_ALL;    

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_ALL_POLL FOR ODMRSYS.ODMR_USER_WORKFLOW_ALL_POLL;    

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_RUNNING_WORKFLOW FOR ODMRSYS.ODMR_USER_RUNNING_WORKFLOW;    

CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_PROJECT_WORKFLOW2 FOR ODMRSYS.ODMR_USER_PROJECT_WORKFLOW2;    

DECLARE
  DB_VER  VARCHAR2(30);
BEGIN
  SELECT VERSION INTO DB_VER FROM PRODUCT_COMPONENT_VERSION WHERE PRODUCT LIKE 'Oracle Database%' OR PRODUCT LIKE 'Personal Oracle Database %' ;
  IF (DB_VER >= '11.2.0.4' ) THEN
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_NODES FOR ODMRSYS.ODMR_USER_WORKFLOW_NODES';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WORKFLOW_MODELS FOR ODMRSYS.ODMR_USER_WORKFLOW_MODELS';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WF_CLAS_TEST_RESULTS FOR ODMRSYS.ODMR_USER_WF_CLAS_TEST_RESULTS';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WF_REGR_TEST_RESULTS FOR ODMRSYS.ODMR_USER_WF_REGR_TEST_RESULTS';    
    EXECUTE IMMEDIATE 'CREATE OR REPLACE PUBLIC SYNONYM ODMR_USER_WF_TEST_RESULTS FOR ODMRSYS.ODMR_USER_WF_TEST_RESULTS';
  END IF;
EXCEPTION WHEN OTHERS THEN
  RAISE;
END;
/
-- Synonymns for Packages
CREATE OR REPLACE PUBLIC SYNONYM ODMR_CONSTANT FOR ODMRSYS.ODMR_CONSTANT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_PROJECT FOR ODMRSYS.ODMR_PROJECT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_WORKFLOW FOR ODMRSYS.ODMR_WORKFLOW;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_UTIL FOR ODMRSYS.ODMR_UTIL;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_ENGINE FOR ODMRSYS.ODMR_ENGINE;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_ENGINE_DATA FOR ODMRSYS.ODMR_ENGINE_DATA;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_ENGINE_MINING FOR ODMRSYS.ODMR_ENGINE_MINING;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_ENGINE_OUTPUT FOR ODMRSYS.ODMR_ENGINE_OUTPUT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_ENGINE_TRANSFORMS FOR ODMRSYS.ODMR_ENGINE_TRANSFORMS;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_ENGINE_TEXT FOR ODMRSYS.ODMR_ENGINE_TEXT;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_ENGINE_DYNAMIC_NODE FOR ODMRSYS.ODMR_ENGINE_DYNAMIC_NODE;

CREATE OR REPLACE PUBLIC SYNONYM ODMR_MESSAGES FOR ODMRSYS.ODMR_MESSAGES;



EXECUTE dbms_output.put_line('Finshed creation of public synonyms on views, packages and types. ' || systimestamp);
