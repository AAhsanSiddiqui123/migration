-- Verify schemas/dashboard_public/tables/user_tracks/alterations/alter_table_add_is_partner  on pg

BEGIN;

SELECT is_partner FROM dashboard_public.user_tracks LIMIT 1;

ROLLBACK;
