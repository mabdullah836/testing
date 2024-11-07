WITH interactions AS (
    SELECT 
        campaign_id, 
        COUNT(DISTINCT customer_id) AS total_interactions
    FROM 
        (
            VALUES 
            ('CUST14', 'CAMP3', 'view', '2023-04-08 16:20:45', 'desktop', 'organic'),
            ('CUST11', 'CAMP5', 'view', '2023-04-10 17:23:25', 'mobile', 'organic'),
            ('CUST9', 'CAMP2', 'impression', '2024-05-27 10:38:48', 'mobile', 'paid'),
            ('CUST5', 'CAMP3', 'view', '2024-01-05 03:54:20', 'desktop', 'organic'),
            ('CUST7', 'CAMP1', 'view', '2024-03-03 01:04:54', 'desktop', 'paid'),
            ('CUST11', 'CAMP2', 'click', '2023-05-09 06:11:22', 'desktop', 'paid'),
            ('CUST4', 'CAMP1', 'view', '2023-07-25 21:00:49', 'tablet', 'paid'),
            ('CUST3', 'CAMP3', 'click', '2024-02-14 20:33:08', 'mobile', 'paid'),
            ('CUST13', 'CAMP4', 'impression', '2024-04-16 03:43:48', 'mobile', 'paid'),
            ('CUST4', 'CAMP3', 'click', '2023-11-25 15:51:46', 'mobile', 'paid'),
            ('CUST12', 'CAMP1', 'click', '2023-06-14 12:12:16', 'mobile', 'organic'),
            ('CUST12', 'CAMP2', 'impression', '2024-02-23 21:12:27', 'mobile', 'organic'),
            ('CUST20', 'CAMP5', 'click', '2023-06-06 05:43:39', 'tablet', 'paid'),
            ('CUST9', 'CAMP3', 'impression', '2023-08-31 02:48:46', 'desktop', 'organic'),
            ('CUST2', 'CAMP2', 'view', '2023-11-06 21:45:19', 'tablet', 'organic'),
            ('CUST15', 'CAMP4', 'view', '2024-05-19 18:36:18', 'tablet', 'organic'),
            ('CUST18', 'CAMP4', 'click', '2023-10-18 01:03:45', 'tablet', 'paid'),
            ('CUST4', 'CAMP4', 'view', '2023-12-07 06:46:38', 'desktop', 'organic'),
            ('CUST13', 'CAMP2', 'impression', '2024-02-07 00:18:46', 'desktop', 'organic'),
            ('CUST3', 'CAMP3', 'view', '2023-12-17 16:18:42', 'mobile', 'paid'),
            ('CUST18', 'CAMP2', 'impression', '2023-04-04 23:40:54', 'tablet', 'organic'),
            ('CUST10', 'CAMP2', 'view', '2023-07-12 13:17:44', 'mobile', 'organic'),
            ('CUST20', 'CAMP5', 'click', '2023-06-24 12:39:43', 'desktop', 'organic'),
            ('CUST12', 'CAMP5', 'view', '2023-02-19 17:31:45', 'desktop', 'organic'),
            ('CUST19', 'CAMP3', 'view', '2023-09-20 14:22:18', 'desktop', 'organic'),
            ('CUST7', 'CAMP5', 'view', '2023-01-17 08:06:25', 'desktop', 'organic'),
            ('CUST3', 'CAMP4', 'impression', '2024-04-01 22:52:09', 'tablet', 'organic'),
            ('CUST2', 'CAMP5', 'impression', '2024-03-06 05:50:44', 'mobile', 'paid'),
            ('CUST8', 'CAMP4', 'click', '2023-06-28 17:38:58', 'desktop', 'organic'),
            ('CUST10', 'CAMP3', 'impression', '2024-04-02 01:19:07', 'mobile', 'organic'),
            ('CUST3', 'CAMP2', 'view', '2023-06-21 01:08:58', 'desktop', 'organic'),
            ('CUST8', 'CAMP2', 'view', '2023-01-06 14:02:49', 'mobile', 'organic'),
            ('CUST4', 'CAMP5', 'impression', '2023-02-25 03:24:25', 'mobile', 'paid'),
            ('CUST13', 'CAMP4', 'view', '2024-05-05 04:36:42', 'desktop', 'paid'),
            ('CUST9', 'CAMP1', 'click', '2023-02-15 17:29:11', 'desktop', 'paid'),
            ('CUST15', 'CAMP1', 'click', '2023-06-27 19:47:03', 'mobile', 'organic'),
            ('CUST12', 'CAMP1', 'impression', '2023-02-22 08:25:59', 'tablet', 'paid'),
            ('CUST6', 'CAMP2', 'impression', '2023-01-25 09:34:47', 'desktop', 'organic'),
            ('CUST12', 'CAMP2', 'click', '2023-09-14 15:38:00', 'desktop', 'paid'),
            ('CUST12', 'CAMP4', 'click', '2023-02-25 00:52:36', 'tablet', 'paid'),
            ('CUST7', 'CAMP5', 'impression', '2024-02-04 08:33:53', 'tablet', 'organic'),
            ('CUST9', 'CAMP1', 'impression', '2023-07-04 20:43:40', 'desktop', 'paid'),
            ('CUST3', 'CAMP4', 'impression', '2023-08-05 07:11:32', 'desktop', 'paid'),
            ('CUST20', 'CAMP4', 'view', '2024-01-13 00:46:55', 'desktop', 'paid'),
            ('CUST6', 'CAMP5', 'impression', '2023-06-16 09:39:48', 'desktop', 'organic'),
            ('CUST18', 'CAMP4', 'impression', '2024-02-23 20:02:56', 'mobile', 'organic'),
            ('CUST8', 'CAMP5', 'view', '2023-04-13 18:28:17', 'mobile', 'paid'),
            ('CUST6', 'CAMP3', 'click', '2024-03-19 13:00:53', 'mobile', 'organic'),
            ('CUST15', 'CAMP5', 'impression', '2024-03-23 13:21:49', 'desktop', 'organic'),
            ('CUST13', 'CAMP1', 'view', '2024-01-03 03:13:35', 'mobile', 'organic')
        ) AS interactions_data
    GROUP BY 
        campaign_id
),
conversions AS (
    SELECT 
        campaign_id, 
        COUNT(DISTINCT customer_id) AS total_conversions
    FROM 
        (
            VALUES 
            ('ORDER519', 'CUST5', 'PROD1', 'CAMP2', '2023-03-31 14:07:33', 319.11),
            ('ORDER272', 'CUST9', 'PROD4', 'CAMP3', '2023-07-22 21:24:15', 338.43),
            ('ORDER136', 'CUST4', 'PROD3', 'CAMP4', '2023-05-19 16:44:43', 79.82),
            ('ORDER956', 'CUST4', 'PROD5', 'CAMP2', '2024-03-26 22:58:37', 452.02),
            ('ORDER358', 'CUST18', 'PROD18', 'CAMP3', '2023-07-26 04:39:06', 263.42),
            ('ORDER903', 'CUST5', 'PROD2', 'CAMP2', '2023-01-30 17:09:57', 340.11),
            ('ORDER71', 'CUST9', 'PROD12', 'CAMP1', '2023-03-26 04:46:11', 176.57),
            ('ORDER901', 'CUST10', 'PROD19', 'CAMP4', '2024-04-08 08:53:39', 354.66),
            ('ORDER251', 'CUST20', 'PROD18', 'CAMP1', '2023-12-04 12:51:20', 286.12),
            ('ORDER379', 'CUST7', 'PROD5', 'CAMP4', '2023-09-26 12:04:29', 112.08),
            ('ORDER292', 'CUST11', 'PROD14', 'CAMP2', '2023-09-01 15:22:08', 339.17),
            ('ORDER162', 'CUST7', 'PROD5', 'CAMP2', '2023-12-05 22:58:17', 201.99),
            ('ORDER449', 'CUST9', 'PROD2', 'CAMP4', '2024-04-15 20:33:07', 379.1),
            ('ORDER854', 'CUST17', 'PROD10', 'CAMP3', '2024-02-02 05:37:00', 103.53),
            ('ORDER557', 'CUST16', 'PROD12', 'CAMP3', '2023-03-31 19:47:37', 293.17),
            ('ORDER721', 'CUST9', 'PROD2', 'CAMP2', '2023-10-27 04:33:47', 214.92),
            ('ORDER310', 'CUST2', 'PROD12', 'CAMP2', '2024-03-23 20:22:48', 420.19),
            ('ORDER627', 'CUST3', 'PROD7', 'CAMP1', '2023-05-28 15:19:30', 165.86),
            ('ORDER827', 'CUST14', 'PROD8', 'CAMP2', '2023-07-17 20:22:18', 120.89),
            ('ORDER670', 'CUST9', 'PROD4', 'CAMP4', '2023-02-04 11:25:29', 397.16),
            ('ORDER542', 'CUST2', 'PROD12', 'CAMP3', '2023-12-05 16:42:04', 311.2),
            ('ORDER9', 'CUST1', 'PROD18', 'CAMP3', '2023-01-02 07:31:39', 174.68),
            ('ORDER684', 'CUST11', 'PROD14', 'CAMP1', '2024-02-08 20:01:03', 232.06),
            ('ORDER837', 'CUST5', 'PROD20', 'CAMP3', '2024-02-23 05:28:21', 344.3),
            ('ORDER568', 'CUST9', 'PROD5', 'CAMP3', '2023-06-03 01:00:03', 265.36),
            ('ORDER307', 'CUST6', 'PROD8', 'CAMP5', '2023-10-10 21:34:49', 400.99),
            ('ORDER955', 'CUST15', 'PROD6', 'CAMP4', '2023-12-01 23:57:58', 480.72),
            ('ORDER680', 'CUST18', 'PROD6', 'CAMP5', '2023-02-24 08:24:22', 373.26),
            ('ORDER107', 'CUST14', 'PROD14', 'CAMP3', '2024-05-30 22:17:16', 336.25),
            ('ORDER962', 'CUST18', 'PROD1', 'CAMP1', '2023-09-14 11:22:29', 156.22)
        ) AS conversions_data
    GROUP BY 
        campaign_id
)
SELECT 
    i.campaign_id,
    i.total_interactions,
    c.total_conversions,
    CASE 
        WHEN i.total_interactions = 0 THEN 0
        ELSE (c.total_conversions::FLOAT / i.total_interactions::FLOAT) * 100
    END AS conversion_rate
FROM 
    interactions i
LEFT JOIN 
    conversions c ON i.campaign_id = c.campaign_id;