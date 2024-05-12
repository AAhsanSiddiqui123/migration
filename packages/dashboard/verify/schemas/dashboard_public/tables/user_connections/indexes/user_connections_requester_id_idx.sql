-- Verify: schemas/dashboard_public/tables/user_connections/indexes/user_connections_requester_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_connections', 'user_connections_requester_id_idx');
COMMIT;  

