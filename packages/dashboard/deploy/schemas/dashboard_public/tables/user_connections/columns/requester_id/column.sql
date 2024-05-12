-- Deploy: schemas/dashboard_public/tables/user_connections/columns/requester_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table

BEGIN;

ALTER TABLE "dashboard_public".user_connections ADD COLUMN requester_id uuid;
COMMIT;
