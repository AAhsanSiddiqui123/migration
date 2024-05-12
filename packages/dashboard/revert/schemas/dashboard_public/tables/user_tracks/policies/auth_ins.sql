-- Revert schemas/dashboard_public/tables/user_tracks/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.user_tracks;

CREATE POLICY auth_ins ON "dashboard_public".user_tracks FOR INSERT TO authenticated WITH CHECK ( user_id = jwt_public.current_user_id() );

COMMIT;
