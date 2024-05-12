-- Revert: schemas/dashboard_public/tables/reward_payments/columns/ref_type/alterations/alt0000001247 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".reward_payments.ref_type IS NULL;
COMMIT;  

