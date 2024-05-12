-- Deploy: schemas/dashboard_public/tables/impacts/columns/net_gain/alterations/alt0000000713 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts/columns/net_gain/column

BEGIN;

ALTER TABLE "dashboard_public".impacts 
    ALTER COLUMN net_gain SET NOT NULL;
COMMIT;
