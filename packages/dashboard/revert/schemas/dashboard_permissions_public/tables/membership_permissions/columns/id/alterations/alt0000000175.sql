-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/columns/id/alterations/alt0000000175 from pg

BEGIN;


ALTER TABLE "dashboard_permissions_public".membership_permissions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

