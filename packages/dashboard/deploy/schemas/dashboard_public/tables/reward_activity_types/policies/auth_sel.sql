-- Deploy schemas/dashboard_public/tables/reward_activity_types/policies/auth_sel to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_activity_types/table
-- requires: schemas/dashboard_public/tables/reward_activity_types/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel ON dashboard_public.reward_activity_types
  FOR SELECT
  TO authenticated
  USING (
    TRUE
  );




COMMIT;
