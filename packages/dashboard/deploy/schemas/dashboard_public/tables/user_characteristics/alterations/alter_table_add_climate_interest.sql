-- Deploy schemas/dashboard_public/tables/user_characteristics/alterations/alter_table_add_climate_interest to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

ALTER TABLE dashboard_public.user_characteristics
    ADD COLUMN climate_interest CLIMATE_INTEREST[] NULL;

COMMIT;
