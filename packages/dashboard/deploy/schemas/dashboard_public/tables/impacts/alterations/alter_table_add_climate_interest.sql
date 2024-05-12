-- Deploy schemas/dashboard_public/tables/impacts/alterations/alter_table_add_climate_interest to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE dashboard_public.impacts
    ADD COLUMN climate_interest CLIMATE_INTEREST NULL;

COMMIT;
