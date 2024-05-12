-- Deploy: schemas/dashboard_public/tables/reward_payments/columns/ref_id/alterations/alt0000001248 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/columns/ref_id/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".reward_payments.ref_id IS E'if not an action, which record id in table';
COMMIT;
