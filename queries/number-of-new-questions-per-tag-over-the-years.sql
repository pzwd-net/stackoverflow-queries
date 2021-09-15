-- Number of new questions per tag over the years
--
-- Repository: https://github.com/pzwd-net/stackoverflow-queries
-- The result of this query is used in 抛砖问答(PZWD). https://pzwd.net/t/top-of-stackoverflow
--
-- Enter Parameters:
--  Keywords: Keywords: (ex: 'java','python','javascript' )
--
SELECT
  YEAR(p.CreationDate) AS TheYear,
  TagName,
  COUNT(*) AS Questions
FROM
  Tags t,
  PostTags pt,
  Posts p
WHERE
  t.Id = pt.TagId
  AND p.Id = pt.PostId
  AND TagName IN ( ##Keywords## )
  AND p.CreationDate < dateadd(YEAR, datediff(YEAR, 0, getdate()), 0)
  AND p.PostTypeId = 1
GROUP BY
  YEAR(p.CreationDate),
  TagName
ORDER BY
  YEAR(p.CreationDate),
  TagName
