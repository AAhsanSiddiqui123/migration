-- Revert: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_responder_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections 
    DROP CONSTRAINT user_connections_requester_id_responder_id_key;

COMMIT;  

