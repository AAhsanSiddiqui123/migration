-- Deploy: schemas/dashboard_public/tables/reward_payments/columns/ref_type/alterations/alt0000001247 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/columns/ref_type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".reward_payments.ref_type IS E'if not an action, which table';
COMMIT;
