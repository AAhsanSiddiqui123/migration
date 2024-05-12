-- Deploy: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_owner_id_fkey/alterations/alt0000001252 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT reward_payments_owner_id_fkey ON "dashboard_public".reward_payments IS NULL;
COMMIT;
