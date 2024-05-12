-- Deploy: schemas/dashboard_public/tables/user_characteristics/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".user_characteristics FOR DELETE TO authenticated USING ( user_id = jwt_public.current_user_id() );
COMMIT;
