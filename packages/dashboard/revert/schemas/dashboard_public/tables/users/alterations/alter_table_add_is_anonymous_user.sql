-- Revert schemas/dashboard_public/tables/users/alterations/alter_table_add_is_anonymous_user from pg

BEGIN;

ALTER TABLE dashboard_public.users
    DROP COLUMN is_anonymous_user;

COMMIT;
