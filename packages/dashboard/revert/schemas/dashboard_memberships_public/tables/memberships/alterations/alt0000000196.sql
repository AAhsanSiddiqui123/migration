-- Revert: schemas/dashboard_memberships_public/tables/memberships/alterations/alt0000000196 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

