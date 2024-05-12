-- Verify schemas/dashboard_public/tables/users/alterations/alter_table_add_is_anonymous_user  on pg

BEGIN;

SELECT is_anonymous_user FROM dashboard_public.users LIMIT 1;

ROLLBACK;
