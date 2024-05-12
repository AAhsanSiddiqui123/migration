-- Revert schemas/dashboard_public/tables/user_tracks/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.user_tracks;

CREATE POLICY auth_upd ON "dashboard_public".user_tracks FOR UPDATE TO authenticated USING ( user_id = jwt_public.current_user_id() );


COMMIT;
