-- Deploy schemas/dashboard_public/tables/user_forms/policies/auth_sel_admin_privileged_data to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/user_forms/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel_admin_privileged_data ON dashboard_public.user_forms
  FOR SELECT
  TO authenticated
  USING (
    	    EXISTS ( SELECT 1   FROM dashboard_memberships_private.app_memberships_acl acl  WHERE ((acl.actor_id = jwt_public.current_user_id()) AND ((acl.permissions & '00000000000000000000010000000000'::"bit") = '00000000000000000000010000000000'::"bit")))
  );




COMMIT;
