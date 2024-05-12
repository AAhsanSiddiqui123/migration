-- Deploy: schemas/dashboard_public/tables/user_connections/columns/requester_id/alterations/alt0000000612 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table
-- requires: schemas/dashboard_public/tables/user_connections/columns/requester_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_connections 
    ALTER COLUMN requester_id SET NOT NULL;
COMMIT;
