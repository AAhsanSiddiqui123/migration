-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/alterations/alt0000000199 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

