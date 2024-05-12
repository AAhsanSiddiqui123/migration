-- Revert schemas/dashboard_public/tables/progress_levels/table from pg

BEGIN;

DROP TABLE dashboard_public.progress_levels;

COMMIT;
