-- Revert schemas/dashboard_public/tables/tracks/triggers/insert_update_is_bounds from pg

BEGIN;

DROP TRIGGER insert_update_is_bounds ON dashboard_public.tracks;
DROP FUNCTION dashboard_private.tg_insert_update_is_bounds; 

COMMIT;
