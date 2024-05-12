-- Revert schemas/dashboard_public/tables/user_characteristics/alterations/alter_table_add_climate_interest from pg

BEGIN;

ALTER TABLE dashboard_public.user_characteristics
    DROP COLUMN climate_interest;

COMMIT;
