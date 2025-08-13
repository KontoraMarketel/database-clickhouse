CREATE TABLE IF NOT EXISTS stg_commissions
(
    kgvp_booking          Float32,
    kgvp_marketplace      Float32,
    kgvp_pickup           Float32,
    kgvp_supplier         Float32,
    kgvp_supplier_express Float32,
    paid_storage_kgvp     Float32,

    parent_id             UInt32,
    parent_name           String,

    subject_id            UInt32,
    subject_name          String,

    task_id               UUID,    -- идентификатор инжеста
    ts                    DateTime -- время вставки (для TTL, отладки и инкрементальности)
)
    ENGINE = MergeTree()
        ORDER BY (task_id, subject_id, ts);
