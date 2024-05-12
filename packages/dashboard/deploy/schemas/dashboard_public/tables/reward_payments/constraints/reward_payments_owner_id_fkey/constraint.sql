-- Deploy: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/reward_payments/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/reward_payments/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".reward_payments 
    ADD CONSTRAINT reward_payments_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
COMMIT;
