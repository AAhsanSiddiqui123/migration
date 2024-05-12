-- Deploy: schemas/dashboard_memberships_public/tables/membership_types/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_types/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_memberships_public".membership_types FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
