-- Deploy: schemas/dashboard_invites_public/tables/group_invites/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_invites_public".group_invites FOR UPDATE TO authenticated USING ( sender_id = jwt_public.current_user_id() );
COMMIT;
