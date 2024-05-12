-- Revert schemas/dashboard_public/tables/user_tracks/alterations/alter_table_add_viewed_at from pg

BEGIN;

ALTER TABLE dashboard_public.user_tracks
    DROP COLUMN viewed_at;

COMMIT;
