-- Deploy: schemas/dashboard_public/tables/user_connections/columns/responder_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table

BEGIN;

ALTER TABLE "dashboard_public".user_connections ADD COLUMN responder_id uuid;
COMMIT;
