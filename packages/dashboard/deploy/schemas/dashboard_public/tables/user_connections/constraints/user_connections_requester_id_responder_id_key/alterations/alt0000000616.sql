-- Deploy: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_responder_id_key/alterations/alt0000000616 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_responder_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT user_connections_requester_id_responder_id_key ON "dashboard_public".user_connections IS E'@omit';
COMMIT;
