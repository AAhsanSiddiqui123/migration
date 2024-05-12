-- Revert: schemas/dashboard_public/tables/reward_payments/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN created_at;
ALTER TABLE "dashboard_public".reward_payments DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".reward_payments;

COMMIT;  

