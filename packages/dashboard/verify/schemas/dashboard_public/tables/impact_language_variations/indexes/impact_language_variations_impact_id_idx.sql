-- Verify: schemas/dashboard_public/tables/impact_language_variations/indexes/impact_language_variations_impact_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.impact_language_variations', 'impact_language_variations_impact_id_idx');
COMMIT;  

