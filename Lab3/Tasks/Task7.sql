SELECT
    VIDEOS.VIDEO_CODE,
    VIDEOS.TITLE,
    (
        SELECT
            COUNT(LOAN_ID)
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
            COUNT(LOAN_ID)
        FROM
            LOANS
        WHERE
            LOANS.VIDEO_ID = VIDEOS.VIDEO_ID
    ) < 2
ORDER BY
    VIDEO_CODE;