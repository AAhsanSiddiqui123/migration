-- Deploy schemas/dashboard_public/tables/user_action_items/policies/auth_ins_admin to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_ins_admin ON dashboard_public.user_action_items
  FOR INSERT
  TO authenticated
  WITH CHECK (
    owner_id IN ( SELECT acl.entity_id   FROM dashboard_memberships_private.memberships_acl acl  WHERE ((acl.actor_id = jwt_public.current_user_id()) AND ((acl.permissions & '00000000000000001000000000000000'::"bit") = '00000000000000001000000000000000'::"bit")))
  );




COMMIT;
