-- Verify schemas/dashboard_public/tables/user_tracks/alterations/alter_table_add_joined_at  on pg

BEGIN;

SELECT joined_at FROM dashboard_public.user_tracks LIMIT 1;

ROLLBACK;
