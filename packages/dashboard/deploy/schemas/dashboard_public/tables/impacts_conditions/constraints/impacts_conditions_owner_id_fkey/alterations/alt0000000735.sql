-- Deploy: schemas/dashboard_public/tables/impacts_conditions/constraints/impacts_conditions_owner_id_fkey/alterations/alt0000000735 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/constraints/impacts_conditions_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT impacts_conditions_owner_id_fkey ON "dashboard_public".impacts_conditions IS E'@omit manyToMany';
COMMIT;
