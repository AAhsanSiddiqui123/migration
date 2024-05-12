-- Deploy dashboard:schemas/dashboard_public/tables/tracks/migration/update_is_bounds to pg

BEGIN;

    UPDATE dashboard_public.tracks SET is_bounds=true where bounds is not NULL;

COMMIT;
