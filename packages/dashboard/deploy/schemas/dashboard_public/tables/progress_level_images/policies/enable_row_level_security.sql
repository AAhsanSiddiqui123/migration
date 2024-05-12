-- Deploy schemas/dashboard_public/tables/progress_level_images/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    ENABLE ROW LEVEL SECURITY;

COMMIT;
