set echo off
set verify off
alter session set NLS_DATE_FORMAT='YYYY-MM-DD';
set serveroutput on
set feedback off

prompt <tasks>


prompt <task n="2.1">
prompt <![CDATA[
    
SELECT
    *
FROM
    VIDEOS;

prompt ]]>
prompt </task>

prompt <task n="2.2">
prompt <![CDATA[

SELECT
    VIDEO_CODE,
    TITLE,
    DIRECTOR
FROM
    VIDEOS
WHERE
    TYPE = 'B';

prompt ]]>
prompt </task>

prompt <task n="2.3">
prompt <![CDATA[

SELECT
    VIDEO_CODE,
    TITLE,
    RENTAL_DATE,
    RETURN_DATE
FROM
    VIDEOS,
    LOANS
WHERE
    VIDEOS.VIDEO_ID = LOANS.VIDEO_ID
    AND RELEASE_DATE < '01-JAN-2000'
ORDER BY
    RENTAL_DATE DESC, title;

prompt ]]>
prompt </task>

prompt <task n="2.4">
prompt <![CDATA[

SELECT
    VIDEO_CODE,
    TITLE,
    RENTAL_DATE
FROM
    VIDEOS,
    LOANS
WHERE
    VIDEOS.VIDEO_ID = LOANS.VIDEO_ID
    AND LOANS.RETURN_DATE IS NULL
    AND VIDEOS.TYPE = 'D'
ORDER BY
    RENTAL_DATE DESC, TITLE;

prompt ]]>
prompt </task>

prompt <task n="2.5">
prompt <![CDATA[

SELECT
    VIDEO_CODE,
    TITLE,
    RENTAL_DATE,
    RETURN_DATE
FROM
    VIDEOS,
    LOANS
WHERE
    VIDEOS.VIDEO_ID = LOANS.VIDEO_ID(+)
ORDER BY
    VIDEOS.VIDEO_CODE, LOANS.RENTAL_DATE DESC;

prompt ]]>
prompt </task>

prompt <task n="2.6">
prompt <![CDATA[

SELECT
    VIDEOS.VIDEO_CODE,
    VIDEOS.TITLE,
    (
        SELECT
            NVL(COUNT(LOAN_ID),0)
        FROM
            LOANS
        WHERE
            LOANS.VIDEO_ID = VIDEOS.VIDEO_ID
    ) AS TIMES
FROM
    VIDEOS
ORDER BY
    VIDEO_CODE;

prompt ]]>
prompt </task>

prompt <task n="2.7">
prompt <![CDATA[

SELECT
    VIDEOS.VIDEO_CODE,
    VIDEOS.TITLE,
    (
        SELECT
            NVL(COUNT(LOAN_ID),0)
        FROM
            LOANS
        WHERE
            LOANS.VIDEO_ID = VIDEOS.VIDEO_ID
    ) AS TIMES
FROM
    VIDEOS
WHERE
    (
        SELECT
             NVL(COUNT(LOAN_ID),0)
        FROM
            LOANS
        WHERE
            LOANS.VIDEO_ID = VIDEOS.VIDEO_ID
    ) < 2
ORDER BY
    VIDEO_CODE;

prompt ]]>
prompt </task>

prompt <task n="2.8">
prompt <![CDATA[

SELECT
    VIDEO_CODE,
    TITLE,
    (
        SELECT
            MAX(RENTAL_DATE)
        FROM
            LOANS
        WHERE
            LOANS.VIDEO_ID = VIDEOS.VIDEO_ID
            AND RETURN_DATE IS NULL
    ) AS RENTAL_DATE
FROM
    VIDEOS
WHERE
    TYPE = 'D'
ORDER BY
    TITLE;

prompt ]]>
prompt </task>

prompt </tasks>