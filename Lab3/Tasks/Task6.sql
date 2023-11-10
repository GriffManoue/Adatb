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
ORDER BY
    VIDEO_CODE;