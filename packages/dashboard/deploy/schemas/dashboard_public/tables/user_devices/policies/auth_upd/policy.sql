-- Deploy: schemas/dashboard_public/tables/user_devices/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".user_devices FOR UPDATE TO authenticated USING ( user_id = jwt_public.current_user_id() );
COMMIT;
