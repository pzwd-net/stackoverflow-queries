-- Number of new questions per tag in the past 24 months
--
-- Repository: https://github.com/pzwd-net/stackoverflow-queries
-- The result of this query is used in 抛砖问答(PZWD). https://pzwd.net/t/top-of-stackoverflow
--
-- Enter Parameters:
--  Keywords: Keywords: (ex: 'java','python','javascript' )
--
SELECT
  TagName,
  ROW_NUMBER() OVER (
    ORDER BY
      COUNT(*) DESC
  ) AS RANK,
  COUNT(*) AS Questions
FROM
  Tags t,
  PostTags pt,
  Posts p
WHERE
  t.Id = pt.TagId
  AND p.Id = pt.PostId
  AND TagName IN ( ##Keywords## )
  AND p.CreationDate < dateadd(MONTH, datediff(MONTH, 0, getdate()), 0)
  AND p.CreationDate > dateadd(MONTH, datediff(MONTH, 0, getdate()) - 24, 0)
  AND p.PostTypeId = 1
GROUP BY
  TagName
ORDER BY
  COUNT(*) DESC
