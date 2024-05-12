-- Revert: schemas/dashboard_memberships_public/tables/members/alterations/alt0000000236 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

