-- Deploy: schemas/dashboard_public/tables/reward_payments/columns/tx_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;

ALTER TABLE "dashboard_public".reward_payments ADD COLUMN tx_id text;
COMMIT;
