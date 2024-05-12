-- Deploy: schemas/dashboard_public/tables/reward_payments/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;

ALTER TABLE "dashboard_public".reward_payments
    ENABLE ROW LEVEL SECURITY;
COMMIT;
