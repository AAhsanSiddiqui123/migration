-- Deploy: schemas/dashboard_limits_public/tables/membership_limits/constraints/membership_limits_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_limits_public/tables/membership_limits/table
-- requires: schemas/dashboard_limits_public/tables/membership_limits/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_limits_public".membership_limits 
    ADD CONSTRAINT membership_limits_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
