-- Verify schemas/dashboard_public/tables/user_profiles/alterations/alter_table_add_progress_count  on pg

BEGIN;

SELECT progress_count FROM dashboard_public.user_profiles LIMIT 1;

ROLLBACK;
