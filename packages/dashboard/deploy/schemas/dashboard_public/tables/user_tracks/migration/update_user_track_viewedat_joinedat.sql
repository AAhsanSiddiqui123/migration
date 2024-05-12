-- Deploy dashboard:schemas/dashboard_public/tables/user_tracks/migration/Update_user_tracks_viewedat_joinedat to pg

BEGIN;

    UPDATE dashboard_public.user_tracks SET viewed_at=NOW(), joined_at=NOW();


COMMIT;
