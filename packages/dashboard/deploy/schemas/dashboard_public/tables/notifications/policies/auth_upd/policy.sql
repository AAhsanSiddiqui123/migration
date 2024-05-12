-- Deploy: schemas/dashboard_public/tables/notifications/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".notifications FOR UPDATE TO authenticated USING ( recipient_id = jwt_public.current_user_id() );
COMMIT;
