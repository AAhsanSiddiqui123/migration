-- Revert: schemas/dashboard_limits_public/tables/membership_limits/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits DROP COLUMN actor_id;
COMMIT;  

