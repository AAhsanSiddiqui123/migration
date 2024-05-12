-- Verify: schemas/dashboard_public/tables/addresses/indexes/addresses_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.addresses', 'addresses_owner_id_idx');
COMMIT;  

