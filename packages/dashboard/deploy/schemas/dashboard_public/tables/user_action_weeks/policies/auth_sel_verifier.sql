-- Deploy schemas/dashboard_public/tables/user_action_weeks/policies/auth_sel_verifier to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table
-- requires: schemas/dashboard_public/tables/user_action_weeks/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel_verifier ON dashboard_public.user_action_weeks
  FOR SELECT
  TO authenticated
  USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000010000000000000') = '00000000000000000010000000000000') );



COMMIT;
