-- Revert schemas/dashboard_public/tables/user_tracks/alterations/alter_table_add_joined_at from pg

BEGIN;

ALTER TABLE dashboard_public.user_tracks
    DROP COLUMN joined_at;

COMMIT;
