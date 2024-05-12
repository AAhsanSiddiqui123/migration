-- Deploy: schemas/dashboard_public/tables/reward_payments/alterations/alt0000001244 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;

ALTER TABLE "dashboard_public".reward_payments
    DISABLE ROW LEVEL SECURITY;
COMMIT;
