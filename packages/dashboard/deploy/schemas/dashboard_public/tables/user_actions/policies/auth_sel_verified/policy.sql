-- Deploy: schemas/dashboard_public/tables/user_actions/policies/auth_sel_verified/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;
CREATE POLICY auth_sel_verified ON "dashboard_public".user_actions FOR SELECT TO authenticated USING ( verified = TRUE );
COMMIT;
