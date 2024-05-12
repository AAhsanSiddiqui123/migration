-- Deploy schemas/dashboard_public/tables/user_settings/alterations/alter_table_add_neighbourhood to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table

BEGIN;

ALTER TABLE dashboard_public.user_settings
    ADD COLUMN neighbourhood text NULL;

COMMIT;
