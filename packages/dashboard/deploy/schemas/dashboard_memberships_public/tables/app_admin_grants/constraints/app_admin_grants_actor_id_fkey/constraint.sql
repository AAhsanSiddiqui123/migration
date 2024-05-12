-- Deploy: schemas/dashboard_memberships_public/tables/app_admin_grants/constraints/app_admin_grants_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_memberships_public/tables/app_admin_grants/table
-- requires: schemas/dashboard_memberships_public/tables/app_admin_grants/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_admin_grants 
    ADD CONSTRAINT app_admin_grants_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
