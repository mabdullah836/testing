WITH interaction_summary AS (
    SELECT
        campaign_id,
        COUNT(CASE WHEN interaction_type = 'click' THEN 1 END) AS click_count,
        COUNT(CASE WHEN interaction_type = 'impression' OR interaction_type = 'view' THEN 1 END) AS total_interactions
    FROM
        interactions
    GROUP BY
        campaign_id
),
clickthrough_rate AS (
    SELECT
        campaign_id,
        click_count,
        total_interactions,
        CASE WHEN total_interactions > 0 THEN (click_count::DECIMAL / total_interactions) * 100 ELSE 0 END AS ctr_percentage
    FROM
        interaction_summary
)
SELECT
    campaign_id,
    ctr_percentage
FROM
    clickthrough_rate;