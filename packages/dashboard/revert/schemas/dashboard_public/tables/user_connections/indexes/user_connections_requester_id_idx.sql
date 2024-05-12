-- Revert: schemas/dashboard_public/tables/user_connections/indexes/user_connections_requester_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_connections_requester_id_idx;
COMMIT;  

