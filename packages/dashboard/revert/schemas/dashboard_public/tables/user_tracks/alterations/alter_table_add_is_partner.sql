-- Revert schemas/dashboard_public/tables/user_tracks/alterations/alter_table_add_is_partner from pg

BEGIN;

ALTER TABLE dashboard_public.user_tracks
    DROP COLUMN is_partner;

COMMIT;
