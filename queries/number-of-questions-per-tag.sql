-- Number of questions per tag
--
-- Repository: https://github.com/pzwd-net/stackoverflow-queries
-- The result of this query is used in 抛砖问答(PZWD). https://pzwd.net/t/top-of-stackoverflow
--
-- Enter Parameters:
--  Keywords: Keywords: (ex: 'java','python','javascript' )
--
SELECT
  t.TagName,
  t.Count
FROM
  Tags t
WHERE
  t.TagName IN ( ##Keywords## )
ORDER BY
  t.Count desc
