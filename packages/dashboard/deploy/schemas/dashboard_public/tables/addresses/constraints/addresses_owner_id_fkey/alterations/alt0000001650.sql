-- Deploy: schemas/dashboard_public/tables/addresses/constraints/addresses_owner_id_fkey/alterations/alt0000001650 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/constraints/addresses_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT addresses_owner_id_fkey ON "dashboard_public".addresses IS E'@omit manyToMany';
COMMIT;
