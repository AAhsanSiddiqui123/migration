-- Deploy schemas/dashboard_public/tables/user_rewards/policies/auth_sel to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table
-- requires: schemas/dashboard_public/tables/user_rewards/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel ON dashboard_public.user_rewards
  FOR SELECT
  TO authenticated
  USING (
   user_id = jwt_public.current_user_id()
  );




COMMIT;
