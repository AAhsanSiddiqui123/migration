-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000000107 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

