-- Deploy: schemas/dashboard_public/tables/messages/policies/auth_ins_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;
CREATE POLICY auth_ins_own ON "dashboard_public".messages AS RESTRICTIVE FOR INSERT TO authenticated WITH CHECK ( sender_id = jwt_public.current_user_id() );
COMMIT;
