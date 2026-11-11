-- NULL означает, что фактическая оплата неизвестна (например, старые заказы).
-- Sync добирает её из внешнего API, не переписывая остальные поля.
ALTER TABLE orders ADD COLUMN amount_paid_kop BIGINT;
ALTER TABLE orders ADD CONSTRAINT orders_amount_paid_non_negative CHECK (amount_paid_kop >= 0);
