-- Revert: schemas/dashboard_invites_public/tables/member_invites/alterations/alt0000000490 from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

