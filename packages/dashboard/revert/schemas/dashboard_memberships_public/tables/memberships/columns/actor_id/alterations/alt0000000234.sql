-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/actor_id/alterations/alt0000000234 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

