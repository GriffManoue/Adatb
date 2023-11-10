SELECT
    VIDEO_CODE,
    TITLE,
    (
        SELECT
            MAX(RENTAL_DATE)
        FROM
            LOANS
        WHERE
            LOANS.VIDEO_ID(+) = VIDEOS.VIDEO_ID
            AND RETURN_DATE IS NULL
    ) AS RENTAL_DATE
FROM
    VIDEOS
WHERE
    TYPE = 'D'
ORDER BY
    TITLE;