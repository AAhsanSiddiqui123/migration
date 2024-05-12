-- Deploy: schemas/dashboard_public/tables/user_contacts/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".user_contacts FOR SELECT TO authenticated USING ( user_id = jwt_public.current_user_id() );
COMMIT;
