-- Deploy schemas/dashboard_invites_public/tables/claimed_invites/policies/auth_del to pg

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_del ON dashboard_invites_public.claimed_invites
  FOR DELETE
  TO authenticated
  USING ( receiver_id = jwt_public.current_user_id() );



COMMIT;
