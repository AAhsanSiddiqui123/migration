-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/op/alterations/alt0000000729 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/op/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts_conditions.op IS E'eq:0, lt:1, lte:2, gte:3, neq:4';
COMMIT;
