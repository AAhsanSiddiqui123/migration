-- Deploy: schemas/dashboard_public/tables/messages/policies/auth_del_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;
CREATE POLICY auth_del_own ON "dashboard_public".messages AS RESTRICTIVE FOR DELETE TO authenticated USING ( sender_id = jwt_public.current_user_id() );
COMMIT;
