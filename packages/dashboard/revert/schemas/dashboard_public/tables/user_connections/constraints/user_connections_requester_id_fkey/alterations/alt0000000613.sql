-- Revert: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_fkey/alterations/alt0000000613 from pg

BEGIN;
COMMENT ON CONSTRAINT user_connections_requester_id_fkey ON "dashboard_public".user_connections IS NULL;
COMMIT;  

