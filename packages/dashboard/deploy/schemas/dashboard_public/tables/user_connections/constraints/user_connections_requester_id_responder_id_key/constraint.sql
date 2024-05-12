-- Deploy: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_responder_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table

BEGIN;

ALTER TABLE "dashboard_public".user_connections
    ADD CONSTRAINT user_connections_requester_id_responder_id_key UNIQUE (requester_id,responder_id);
COMMIT;
