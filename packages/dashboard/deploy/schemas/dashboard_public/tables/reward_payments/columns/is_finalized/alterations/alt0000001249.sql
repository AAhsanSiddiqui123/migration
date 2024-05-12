-- Deploy: schemas/dashboard_public/tables/reward_payments/columns/is_finalized/alterations/alt0000001249 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table
-- requires: schemas/dashboard_public/tables/reward_payments/columns/is_finalized/column

BEGIN;

ALTER TABLE "dashboard_public".reward_payments 
    ALTER COLUMN is_finalized SET NOT NULL;
COMMIT;
