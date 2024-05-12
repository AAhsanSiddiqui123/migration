-- Revert schemas/dashboard_public/tables/impacts/alterations/alter_table_add_climate_interest from pg

BEGIN;

ALTER TABLE dashboard_public.impacts
    DROP COLUMN climate_interest;

COMMIT;
