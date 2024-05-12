-- Deploy schemas/dashboard_public/tables/users/alterations/alter_table_add_is_anonymous_user to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

ALTER TABLE dashboard_public.users
    ADD COLUMN is_anonymous_user boolean DEFAULT false;

COMMIT;
