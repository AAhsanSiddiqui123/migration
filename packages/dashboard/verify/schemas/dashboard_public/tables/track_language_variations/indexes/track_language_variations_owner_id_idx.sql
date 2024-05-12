-- Verify: schemas/dashboard_public/tables/track_language_variations/indexes/track_language_variations_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.track_language_variations', 'track_language_variations_owner_id_idx');
COMMIT;  

