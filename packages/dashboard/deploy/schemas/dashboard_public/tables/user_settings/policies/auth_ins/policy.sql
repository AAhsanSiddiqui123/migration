-- Deploy: schemas/dashboard_public/tables/user_settings/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".user_settings FOR INSERT TO authenticated WITH CHECK ( user_id = jwt_public.current_user_id() );
COMMIT;
