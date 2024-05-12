-- Deploy: schemas/dashboard_public/tables/impacts/columns/net_gain/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts ADD COLUMN net_gain boolean;
COMMIT;
