-- Deploy: schemas/dashboard_public/tables/notification_preferences/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".notification_preferences FOR DELETE TO authenticated USING ( user_id = jwt_public.current_user_id() );
COMMIT;
