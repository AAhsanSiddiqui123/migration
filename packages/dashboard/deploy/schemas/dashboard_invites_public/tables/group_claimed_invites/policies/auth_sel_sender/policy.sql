-- Deploy: schemas/dashboard_invites_public/tables/group_claimed_invites/policies/auth_sel_sender/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_claimed_invites/table

BEGIN;
CREATE POLICY auth_sel_sender ON "dashboard_invites_public".group_claimed_invites FOR SELECT TO authenticated USING ( sender_id = jwt_public.current_user_id() );
COMMIT;
