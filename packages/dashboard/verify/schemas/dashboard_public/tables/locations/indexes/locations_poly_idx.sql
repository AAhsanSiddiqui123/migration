-- Verify: schemas/dashboard_public/tables/locations/indexes/locations_poly_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.locations', 'locations_poly_idx');
COMMIT;  

