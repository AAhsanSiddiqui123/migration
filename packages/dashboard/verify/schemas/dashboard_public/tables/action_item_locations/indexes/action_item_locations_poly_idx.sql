-- Verify: schemas/dashboard_public/tables/action_item_locations/indexes/action_item_locations_poly_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_item_locations', 'action_item_locations_poly_idx');
COMMIT;  

