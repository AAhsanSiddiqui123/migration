-- Revert dashboard:schemas/dashboard_public/tables/user_tracks/migration/Update_user_tracks_viewedat_joinedat from pg

BEGIN;

    UPDATE dashboard_public.user_tracks SET viewed_at=NULL, joined_at=NULL;

COMMIT;
