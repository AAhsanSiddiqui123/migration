-- Deploy: schemas/dashboard_public/tables/objects/constraints/objects_owner_id_fkey/alterations/alt0000000658 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/constraints/objects_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT objects_owner_id_fkey ON "dashboard_public".objects IS E'@omit manyToMany';
COMMIT;
