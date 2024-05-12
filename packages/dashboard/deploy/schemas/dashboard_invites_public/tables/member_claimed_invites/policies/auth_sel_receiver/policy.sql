-- Deploy: schemas/dashboard_invites_public/tables/member_claimed_invites/policies/auth_sel_receiver/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_claimed_invites/table

BEGIN;
CREATE POLICY auth_sel_receiver ON "dashboard_invites_public".member_claimed_invites FOR SELECT TO authenticated USING ( receiver_id = jwt_public.current_user_id() );
COMMIT;
