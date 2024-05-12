-- Revert: schemas/dashboard_limits_public/tables/membership_limits/columns/entity_id/alterations/alt0000000191 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

