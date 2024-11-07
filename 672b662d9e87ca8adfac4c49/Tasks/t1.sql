WITH interaction_counts AS (
    SELECT 
        campaign_id,
        SUM(CASE WHEN interaction_type = 'click' THEN 1 ELSE 0 END) AS total_clicks,
        SUM(CASE WHEN interaction_type = 'impression' THEN 1 ELSE 0 END) AS total_impressions
    FROM 
        joined_campaign_interaction_table
    GROUP BY 
        campaign_id
),
ctr_calculation AS (
    SELECT 
        campaign_id,
        total_clicks,
        total_impressions,
        CASE 
            WHEN total_impressions > 0 THEN (total_clicks::FLOAT / total_impressions) * 100
            ELSE 0
        END AS ctr
    FROM 
        interaction_counts
)
SELECT 
    campaign_id,
    total_clicks,
    total_impressions,
    ctr
FROM 
    ctr_calculation;