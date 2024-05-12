-- Revert: schemas/dashboard_memberships_public/tables/membership_types/alterations/alt0000000024 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

