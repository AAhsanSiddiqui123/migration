-- Deploy schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_ins_create_invite_check to pg

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_ins_create_invite_check ON dashboard_invites_public.claimed_invites
  AS RESTRICTIVE
  FOR INSERT
  TO authenticated
  WITH CHECK ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000010') = '00000000000000000000000000000010') );





COMMIT;
