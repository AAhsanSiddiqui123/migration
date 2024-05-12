-- Verify: schemas/dashboard_public/tables/impact_language_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.impact_language_variations');
COMMIT;  

