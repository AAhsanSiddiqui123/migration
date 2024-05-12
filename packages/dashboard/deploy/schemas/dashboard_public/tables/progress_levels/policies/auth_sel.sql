-- Deploy schemas/dashboard_public/tables/progress_levels/policies/auth_sel to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_levels/table
-- requires: schemas/dashboard_public/tables/progress_levels/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel ON dashboard_public.progress_levels
  FOR SELECT
  TO authenticated
  USING (true);




COMMIT;
