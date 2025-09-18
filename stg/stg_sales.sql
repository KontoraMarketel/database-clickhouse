CREATE TABLE IF NOT EXISTS stg_sales (
    nm_id UInt32,
    imt_name String DEFAULT NULL,
    vendor_code String DEFAULT NULL,
    history_dt Date('UTC') DEFAULT NULL,
    history_open_card_count UInt32 DEFAULT NULL,
    history_add_to_card_count UInt32 DEFAULT NULL,
    history_orders_count UInt32 DEFAULT NULL,
    history_orders_sum_rub UInt32 DEFAULT NULL,
    history_buyouts_count UInt32 DEFAULT NULL,
    history_buyouts_sum_rub UInt32 DEFAULT NULL,
    history_buyouts_percent UInt32 DEFAULT NULL,
    history_add_to_cart_conversion UInt32 DEFAULT NULL,
    history_cart_to_order_conversion UInt32 DEFAULT NULL,
    task_id UUID,
    ts DateTime('UTC')
)