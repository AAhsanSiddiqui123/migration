-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/alterations/alt0000000062 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limit_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

