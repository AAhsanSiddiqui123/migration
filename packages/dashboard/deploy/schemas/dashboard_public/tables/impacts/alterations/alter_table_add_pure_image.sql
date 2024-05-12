-- Deploy schemas/dashboard_public/tables/impacts/alterations/alter_table_add_pure_image to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE dashboard_public.impacts
    ADD COLUMN pure_image image NULL;

COMMIT;
