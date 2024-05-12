-- Deploy: schemas/dashboard_public/tables/impacts/columns/net_gain/alterations/alt0000000715 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/columns/net_gain/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.net_gain IS E'overall net gain or loss';
COMMIT;
