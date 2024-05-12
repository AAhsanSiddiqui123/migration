-- Verify: schemas/dashboard_public/tables/action_locations/indexes/action_locations_poly_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_locations', 'action_locations_poly_idx');
COMMIT;  

