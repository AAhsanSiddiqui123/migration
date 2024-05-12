-- Deploy: schemas/dashboard_public/tables/reward_payments/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".reward_payments FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
