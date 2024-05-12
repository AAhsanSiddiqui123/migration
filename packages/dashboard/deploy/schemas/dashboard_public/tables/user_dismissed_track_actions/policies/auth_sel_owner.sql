-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/policies/auth_sel_owner to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel_owner ON dashboard_public.user_dismissed_track_actions
  FOR SELECT
  TO authenticated
  USING (
    owner_id = jwt_public.current_user_id()
  );




COMMIT;
