-- Revert: schemas/dashboard_public/tables/user_actions/columns/verified/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN verified;
COMMIT;  

