-- Deploy: schemas/dashboard_public/tables/notification_preferences/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".notification_preferences FOR INSERT TO authenticated WITH CHECK ( user_id = jwt_public.current_user_id() );
COMMIT;
