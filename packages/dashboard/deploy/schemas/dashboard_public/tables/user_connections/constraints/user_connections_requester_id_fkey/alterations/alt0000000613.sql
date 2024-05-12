-- Deploy: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_fkey/alterations/alt0000000613 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/constraints/user_connections_requester_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_connections_requester_id_fkey ON "dashboard_public".user_connections IS E'@omit manyToMany';
COMMIT;
