-- Revert: schemas/dashboard_public/tables/user_pass_actions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions DROP COLUMN id;
COMMIT;  

