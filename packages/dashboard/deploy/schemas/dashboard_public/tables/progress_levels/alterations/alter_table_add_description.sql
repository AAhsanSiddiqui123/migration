-- Deploy schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_description to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_levels/table

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    ADD COLUMN description text NULL;

COMMIT;
