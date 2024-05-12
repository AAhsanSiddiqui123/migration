-- Revert: schemas/dashboard_public/tables/reward_payments/columns/ref_id/alterations/alt0000001248 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".reward_payments.ref_id IS NULL;
COMMIT;  

