-- Revert dashboard:schemas/dashboard_public/tables/tracks/migration/update_is_bounds from pg

BEGIN;

    UPDATE dashboard_public.tracks SET is_bounds=false;

COMMIT;
