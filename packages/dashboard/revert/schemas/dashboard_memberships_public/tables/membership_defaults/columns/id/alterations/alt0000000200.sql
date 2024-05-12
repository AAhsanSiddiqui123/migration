-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/columns/id/alterations/alt0000000200 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

