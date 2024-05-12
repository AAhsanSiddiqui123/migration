-- Deploy: schemas/dashboard_public/tables/track_language_variations/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".track_language_variations FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
