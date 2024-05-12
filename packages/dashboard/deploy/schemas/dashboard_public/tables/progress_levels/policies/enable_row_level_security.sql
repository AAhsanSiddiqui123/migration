-- Deploy schemas/dashboard_public/tables/progress_levels/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_levels/table

BEGIN;

ALTER TABLE dashboard_public.progress_levels
    ENABLE ROW LEVEL SECURITY;

COMMIT;
