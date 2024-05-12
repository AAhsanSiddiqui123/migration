-- Deploy: schemas/dashboard_invites_public/tables/invites/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_invites_public".invites FOR UPDATE TO authenticated USING ( sender_id = jwt_public.current_user_id() );
COMMIT;
