-- Deploy: schemas/dashboard_public/tables/reward_payments/columns/amount/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;

ALTER TABLE "dashboard_public".reward_payments ADD COLUMN amount numeric;
COMMIT;
