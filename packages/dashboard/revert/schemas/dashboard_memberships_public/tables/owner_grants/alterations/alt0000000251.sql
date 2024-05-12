-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/alterations/alt0000000251 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".owner_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

