-- Deploy: schemas/dashboard_public/tables/forms/constraints/forms_owner_id_fkey/alterations/alt0000001325 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/constraints/forms_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT forms_owner_id_fkey ON "dashboard_public".forms IS E'@omit manyToMany';
COMMIT;
