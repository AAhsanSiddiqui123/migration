-- Verify: schemas/dashboard_public/tables/user_locations/indexes/user_locations_poly_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_locations', 'user_locations_poly_idx');
COMMIT;  

