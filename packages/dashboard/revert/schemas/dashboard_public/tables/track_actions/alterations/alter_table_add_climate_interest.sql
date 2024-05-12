-- Revert schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_climate_interest from pg

BEGIN;

ALTER TABLE dashboard_public.track_actions
    DROP COLUMN climate_interest;

COMMIT;
