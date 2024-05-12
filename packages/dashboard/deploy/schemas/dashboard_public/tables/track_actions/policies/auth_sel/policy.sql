-- Deploy: schemas/dashboard_public/tables/track_actions/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".track_actions FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
