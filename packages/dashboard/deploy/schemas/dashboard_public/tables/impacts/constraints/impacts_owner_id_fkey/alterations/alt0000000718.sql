-- Deploy: schemas/dashboard_public/tables/impacts/constraints/impacts_owner_id_fkey/alterations/alt0000000718 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/constraints/impacts_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT impacts_owner_id_fkey ON "dashboard_public".impacts IS E'@omit manyToMany';
COMMIT;
