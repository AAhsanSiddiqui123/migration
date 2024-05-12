-- Deploy schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_del to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/table
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_del ON dashboard_public.data_tag_language_variations
  FOR DELETE
  TO authenticated
  USING 
  ( 
    EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_admin IS TRUE) 
  );



COMMIT;
