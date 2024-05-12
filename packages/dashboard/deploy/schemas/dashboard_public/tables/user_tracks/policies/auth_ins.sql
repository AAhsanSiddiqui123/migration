-- Deploy schemas/dashboard_public/tables/user_tracks/policies/auth_ins to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table
-- requires: schemas/dashboard_public/tables/user_tracks/policies/enable_row_level_security

BEGIN;
DROP POLICY auth_ins ON dashboard_public.user_tracks;

CREATE POLICY auth_ins ON dashboard_public.user_tracks
  FOR INSERT
  TO authenticated
  WITH CHECK (((user_id = jwt_public.current_user_id() and is_partner = false) OR ((EXISTS (Select 1  FROM dashboard_public.users u where u.id=user_id AND u.type =1))  AND is_partner = true)));



COMMIT;
