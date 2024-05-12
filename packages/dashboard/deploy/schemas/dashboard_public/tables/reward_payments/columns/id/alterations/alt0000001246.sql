-- Deploy: schemas/dashboard_public/tables/reward_payments/columns/id/alterations/alt0000001246 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table
-- requires: schemas/dashboard_public/tables/reward_payments/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".reward_payments 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
