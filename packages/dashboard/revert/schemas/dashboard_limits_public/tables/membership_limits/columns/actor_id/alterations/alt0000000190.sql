-- Revert: schemas/dashboard_limits_public/tables/membership_limits/columns/actor_id/alterations/alt0000000190 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

