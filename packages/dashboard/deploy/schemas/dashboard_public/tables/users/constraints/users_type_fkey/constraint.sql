-- Deploy: schemas/dashboard_public/tables/users/constraints/users_type_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/role_types/table
-- requires: schemas/dashboard_public/tables/users/columns/type/column
-- requires: schemas/dashboard_public/tables/role_types/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".users 
    ADD CONSTRAINT users_type_fkey 
    FOREIGN KEY (type)
    REFERENCES "dashboard_public".role_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
