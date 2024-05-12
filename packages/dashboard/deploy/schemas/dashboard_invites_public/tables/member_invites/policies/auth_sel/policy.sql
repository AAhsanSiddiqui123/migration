-- Deploy: schemas/dashboard_invites_public/tables/member_invites/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_invites_public".member_invites FOR SELECT TO authenticated USING ( sender_id = jwt_public.current_user_id() );
COMMIT;
