-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/alterations/alt0000000487 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".claimed_invites
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

