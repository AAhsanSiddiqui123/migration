-- Revert schemas/dashboard_public/tables/progress_level_images/table from pg

BEGIN;

DROP TABLE dashboard_public.progress_level_images;

COMMIT;
