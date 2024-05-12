-- Revert: schemas/dashboard_public/tables/user_profiles/alterations/alt0000000559 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

