-- Deploy schemas/dashboard_public/tables/user_action_verifications/policies/auth_sel_user to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table
-- requires: schemas/dashboard_public/tables/user_action_verifications/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel_user ON dashboard_public.user_action_verifications
  FOR SELECT
  TO authenticated
  USING (
    user_id = jwt_public.current_user_id()
  );




COMMIT;
