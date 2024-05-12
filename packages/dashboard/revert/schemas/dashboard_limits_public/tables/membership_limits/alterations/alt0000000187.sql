-- Revert: schemas/dashboard_limits_public/tables/membership_limits/alterations/alt0000000187 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

