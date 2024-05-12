-- Deploy: schemas/dashboard_invites_public/tables/invites/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_invites_public".invites FOR INSERT TO authenticated WITH CHECK ( sender_id = jwt_public.current_user_id() );
COMMIT;
