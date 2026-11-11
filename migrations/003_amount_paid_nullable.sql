-- 002 заполнила amount_paid_kop суммой до скидки. Для старых строк реальная оплата
-- неизвестна, поэтому помечаем её NULL: sync подтянет значение из внешнего API.
ALTER TABLE orders ALTER COLUMN amount_paid_kop DROP NOT NULL;
UPDATE orders SET amount_paid_kop = NULL WHERE amount_paid_kop = amount_kop;
