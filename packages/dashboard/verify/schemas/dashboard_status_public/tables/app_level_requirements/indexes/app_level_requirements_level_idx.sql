-- Verify: schemas/dashboard_status_public/tables/app_level_requirements/indexes/app_level_requirements_level_idx on pg

BEGIN;
SELECT verify_index('dashboard_status_public.app_level_requirements', 'app_level_requirements_level_idx');
COMMIT;  

