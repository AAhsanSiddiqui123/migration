-- Deploy: schemas/dashboard_public/tables/impacts/columns/type/alterations/alt0000000709 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/columns/type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.type IS E'if no object_type exists, use this';
COMMIT;
