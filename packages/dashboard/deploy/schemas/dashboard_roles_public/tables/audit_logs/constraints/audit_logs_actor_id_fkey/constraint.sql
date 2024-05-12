-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ADD CONSTRAINT audit_logs_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
