CREATE TABLE IF NOT EXISTS default.stg_prices (
    nm_id UInt64,
    vendor_code String,
    currency_iso_code_4217 String,
    discount Float32,
    club_discount Float32,
    editable_size_price Boolean,
    size_id UInt32,
    price Float32,
    discounted_price Float32,
    club_discounted_price Float32,
    tech_size_name String,
    task_id UUID,
    ts DateTime('UTC')
) ENGINE = MergeTree
ORDER BY (nm_id, vendor_code);


фыВФвфАВ