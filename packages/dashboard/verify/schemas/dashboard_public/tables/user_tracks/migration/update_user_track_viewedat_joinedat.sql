-- Verify dashboard:schemas/dashboard_public/tables/user_tracks/migration/Update_user_tracks_viewedat_joinedat on pg

BEGIN;

SELECT viewed_at FROM dashboard_public.user_tracks LIMIT 1;

ROLLBACK;
