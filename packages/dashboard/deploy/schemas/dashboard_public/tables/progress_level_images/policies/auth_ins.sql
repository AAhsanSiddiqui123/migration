-- Deploy schemas/dashboard_public/tables/progress_level_images/policies/auth_ins to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table
-- requires: schemas/dashboard_public/tables/progress_level_images/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_ins ON dashboard_public.progress_level_images
  FOR INSERT
  TO authenticated
  WITH CHECK ((EXISTS ( SELECT 1
  FROM dashboard_memberships_private.app_memberships_acl acl
  WHERE ((acl.actor_id = jwt_public.current_user_id()) AND ((acl.permissions & '00000000000000000000001000000000'::"bit") = '00000000000000000000001000000000'::"bit")))));



COMMIT;
