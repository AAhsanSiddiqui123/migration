-- Deploy: schemas/dashboard_public/tables/reward_payments/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".reward_payments TO authenticated;
COMMIT;
