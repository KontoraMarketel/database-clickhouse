CREATE TABLE IF NOT EXISTS default.stg_fbw_incomes (
    income_id UInt32,
    number String,
    date DateTime('UTC'),
    last_change_date DateTime('UTC'),
    supplier_article String,
    tech_size String,
    barcode String,
    quantity UInt32,
    total_price Decimal(18, 2),
    date_close DateTime('UTC'),
    warehouse_name String,
    nm_id UInt32,
    status String,
    task_id UUID,
    ts DateTime('UTC')
) ENGINE = MergeTree PARTITION BY toYYYYMM(date)
ORDER BY (income_id, nm_id, barcode) SETTINGS index_granularity = 8192;