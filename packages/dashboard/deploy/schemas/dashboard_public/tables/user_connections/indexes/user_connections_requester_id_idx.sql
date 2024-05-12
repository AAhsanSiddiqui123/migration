-- Deploy: schemas/dashboard_public/tables/user_connections/indexes/user_connections_requester_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table
-- requires: schemas/dashboard_public/tables/user_connections/columns/requester_id/column

BEGIN;
CREATE INDEX user_connections_requester_id_idx ON "dashboard_public".user_connections (requester_id);
COMMIT;
