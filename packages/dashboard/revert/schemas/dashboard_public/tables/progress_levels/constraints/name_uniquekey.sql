-- Revert dashboard:schemas/dashboard_public/tables/progress_levels/constraints/name_uniquekey from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    DROP CONSTRAINT progress_levels_name_key;



COMMIT;
