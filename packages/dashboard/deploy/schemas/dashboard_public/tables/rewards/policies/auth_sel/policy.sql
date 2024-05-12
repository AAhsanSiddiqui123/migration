-- Deploy: schemas/dashboard_public/tables/rewards/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".rewards FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
