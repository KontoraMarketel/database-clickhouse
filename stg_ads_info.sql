CREATE TABLE IF NOT EXISTS stg_ads_info (
    end_time DateTime,
    create_time DateTime,
    change_time DateTime,
    start_time DateTime,
    auto_params.cpm UInt32,
    auto_params.subject.name String,
    auto_params.subject.id UInt32,
    auto_params.menu_id UInt32,
    auto_params.nm UInt32,
    auto_params.active.carousel Bool,
    auto_params.active.recom Bool,
    auto_params.active.booster Bool,
    auto_params.nm_cpm.nm UInt32,
    auto_params.nm_cpm.cpm UInt32,
    name String,
    daily_budget UInt32,
    advert_id UInt32,
    status UInt32,
    type UInt32,
    payment_type UInt32,
    task_id UUID,
    -- идентификатор инжеста
    ts DateTime -- время вставки (для TTL, отладки и инкрементальности)
) ENGINE = MergeTree()
ORDER BY (task_id, advert_id, ts);