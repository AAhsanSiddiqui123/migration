-- Deploy schemas/dashboard_public/tables/object_type_attribute_language_variations/policies/auth_sel to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attribute_language_variations/table
-- requires: schemas/dashboard_public/tables/object_type_attribute_language_variations/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel ON dashboard_public.object_type_attribute_language_variations
  FOR SELECT
  TO authenticated
  USING (
      true
  );




COMMIT;
