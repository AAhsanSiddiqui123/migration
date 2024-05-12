-- Deploy: schemas/dashboard_public/tables/notifications/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".notifications FOR INSERT TO authenticated WITH CHECK ( recipient_id = jwt_public.current_user_id() );
COMMIT;
