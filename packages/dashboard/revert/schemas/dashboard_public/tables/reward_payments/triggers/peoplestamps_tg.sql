-- Revert: schemas/dashboard_public/tables/reward_payments/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN created_by;
ALTER TABLE "dashboard_public".reward_payments DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".reward_payments;


COMMIT;  

