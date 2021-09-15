-- Most popular StackOverflow tags in 1Q 2020
SELECT
  top 100 num.TagName AS Tag,
  ROW_NUMBER() OVER (
    ORDER BY
      rate.Rate desc
  ) AS RANK,
  ROW_NUMBER() OVER (
    ORDER BY
      num.Num desc
  ) AS TotalRank,
  rate.Rate AS Questions,
  num.Num AS QuestionsTotal
FROM
  (
    SELECT
      COUNT(PostId) AS Rate,
      TagName
    FROM
      Tags,
      PostTags,
      Posts
    WHERE
      Tags.Id = PostTags.TagId
      AND Posts.Id = PostTags.PostId
      AND Posts.CreationDate < '2020-04-01'
      AND Posts.CreationDate > '2020-01-01'
    GROUP BY
      TagName
  ) AS rate
  INNER JOIN (
    SELECT
      COUNT(PostId) AS Num,
      TagName
    FROM
      Tags,
      PostTags,
      Posts
    WHERE
      Tags.Id = PostTags.TagId
      AND Posts.Id = PostTags.PostId
      AND Posts.CreationDate < '2020-04-01'
    GROUP BY
      TagName
    HAVING
      COUNT(PostId) > 1000
  ) AS num ON rate.TagName = num.TagName
ORDER BY
  rate.rate desc;
