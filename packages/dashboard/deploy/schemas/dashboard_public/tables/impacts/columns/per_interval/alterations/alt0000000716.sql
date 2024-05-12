-- Deploy: schemas/dashboard_public/tables/impacts/columns/per_interval/alterations/alt0000000716 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/columns/per_interval/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.per_interval IS E'impact is measured per this interval';
COMMIT;
