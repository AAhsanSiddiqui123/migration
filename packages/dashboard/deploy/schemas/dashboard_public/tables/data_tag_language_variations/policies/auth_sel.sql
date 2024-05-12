-- Deploy schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_sel to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/table
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel ON dashboard_public.data_tag_language_variations
  FOR SELECT
  TO authenticated
  USING (
   TRUE
  );




COMMIT;
