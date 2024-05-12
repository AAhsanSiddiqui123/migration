-- Deploy schemas/dashboard_public/tables/progress_level_images/policies/auth_sel to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table
-- requires: schemas/dashboard_public/tables/progress_level_images/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel ON dashboard_public.progress_level_images
  FOR SELECT
  TO authenticated
  USING (
    true
  );




COMMIT;
