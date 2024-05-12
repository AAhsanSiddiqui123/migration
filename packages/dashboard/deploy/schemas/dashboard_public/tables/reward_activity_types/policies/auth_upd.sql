-- Deploy schemas/dashboard_public/tables/reward_activity_types/policies/auth_upd to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_activity_types/table
-- requires: schemas/dashboard_public/tables/reward_activity_types/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_upd ON dashboard_public.reward_activity_types
  FOR UPDATE
  TO authenticated
  USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000001000000000') = '00000000000000000000001000000000') );




COMMIT;
