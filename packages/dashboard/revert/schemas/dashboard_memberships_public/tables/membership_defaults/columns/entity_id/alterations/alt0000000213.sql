-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/columns/entity_id/alterations/alt0000000213 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

