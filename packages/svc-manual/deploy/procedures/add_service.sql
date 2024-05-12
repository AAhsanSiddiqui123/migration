-- Deploy procedures/add_service to pg

BEGIN;

CREATE FUNCTION migration_init_domain(
  vdatabase text,
  vdatabase_id uuid,
  vdomain_name text,
  vpublic_schema text[],
  vadmin_schema text[],
  vlogo image,
  vog_image image,
  vfavicon upload,
  vapple_touch_icon image,
  vsite_title text,
  vsite_description text
) returns void as $$
DECLARE
  vapi_subdomain hostname = 'api';
  vapp_subdomain hostname = 'app';
  vadmin_subdomain hostname = 'admin';
BEGIN

/*
      _                       _           
     | |                     (_)          
   __| | ___  _ __ ___   __ _ _ _ __  ___ 
  / _` |/ _ \| '_ ` _ \ / _` | | '_ \/ __|
 | (_| | (_) | | | | | | (_| | | | | \__ \
  \__,_|\___/|_| |_| |_|\__,_|_|_| |_|___/
                                          
*/

  INSERT INTO 
      meta_public.domains (
          database_id,
          domain,
          subdomain
      )
      VALUES (
          vdatabase_id,
          vdomain_name,
          vapi_subdomain
      );

  INSERT INTO 
      meta_public.domains (
          database_id,
          domain,
          subdomain
      )
      VALUES (
          vdatabase_id,
          vdomain_name,
          vadmin_subdomain
      );

  INSERT INTO 
      meta_public.domains (
          database_id,
          domain,
          subdomain
      )
      VALUES (
          vdatabase_id,
          vdomain_name,
          vapp_subdomain
      );

/*
              _     
             (_)    
   __ _ _ __  _ ___ 
  / _` | '_ \| / __|
 | (_| | |_) | \__ \
  \__,_| .__/|_|___/
       | |          
       |_|          
*/

  INSERT INTO 
      meta_public.apis (
          database_id,
          dbname,
          anon_role,
          role_name,
          domain_id,
          schemas
      )
      VALUES (
          vdatabase_id,
          vdatabase,
          'anonymous',
          'authenticated',
          (SELECT id FROM meta_public.domains 
              WHERE domain = vdomain_name
              AND subdomain = vapi_subdomain),
          vpublic_schema
      );

  INSERT INTO 
      meta_public.apis (
          database_id,
          dbname,
          anon_role,
          role_name,
          domain_id,
          schemas
      )
      VALUES (
          vdatabase_id,
          vdatabase,
          'administrator',
          'administrator',
          (SELECT id FROM meta_public.domains 
              WHERE domain = vdomain_name
              AND subdomain = vadmin_subdomain),
          vadmin_schema
      );


/*
      _ _            
     (_) |           
  ___ _| |_ ___  ___ 
 / __| | __/ _ \/ __|
 \__ \ | ||  __/\__ \
 |___/_|\__\___||___/
                     
*/

  INSERT INTO 
      meta_public.sites (
          database_id,
          dbname,
          domain_id,
          title,
          description,
          logo,
          favicon,
          apple_touch_icon,
          og_image
      )
      VALUES (
          vdatabase_id,
          vdatabase,
          (SELECT id FROM meta_public.domains 
              WHERE domain = vdomain_name
              AND subdomain = vapp_subdomain),
          vsite_title,
          vsite_description,
          vlogo,
          vfavicon,
          vapple_touch_icon,
          vog_image
      );


END;
$$
LANGUAGE 'plpgsql' VOLATILE;

CREATE FUNCTION run_migration_svc(
  vdatabase text,
  vdatabase_id uuid,
  vdomain_name text,
  vpublic_schema text[],
  vadmin_schema text[],
  vlogo image,
  vog_image image,
  vapple_touch_icon image,
  vfavicon upload,
  vsite_title text,
  vsite_description text
) returns void as $$
DECLARE
BEGIN

  GRANT SELECT ON meta_public.domains TO administrator;
  GRANT SELECT ON meta_public.apis TO administrator;
  GRANT SELECT ON meta_public.apps TO administrator;
  GRANT SELECT ON meta_public.sites TO administrator;
  GRANT SELECT ON meta_public.api_modules TO administrator;
  GRANT SELECT ON meta_public.site_modules TO administrator;
  GRANT SELECT ON meta_public.site_themes TO administrator;
  GRANT SELECT ON meta_public.site_metadata TO administrator;

  EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', vdatabase, 'app_user');
  EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', vdatabase, 'app_admin');

  PERFORM migration_init_domain(
    vdatabase := vdatabase,
    vdatabase_id := vdatabase_id,
    vdomain_name := vdomain_name,
    vpublic_schema := vpublic_schema,
    vadmin_schema := vadmin_schema,
    vlogo := vlogo,
    vog_image := vog_image,
    vfavicon := vfavicon,
    vapple_touch_icon := vapple_touch_icon,
    vsite_title := vsite_title,
    vsite_description := vsite_description
  );

END;
$$
LANGUAGE 'plpgsql' VOLATILE;


DO $LQLMIGRATION$
  DECLARE
  BEGIN

    -- dbe
    -- 455a6e2c-3778-55f9-aca2-65ffa9b4a47c

    SET session_replication_role TO replica;
    INSERT INTO collections_public.database (
        id, name
    ) values ('455a6e2c-3778-55f9-aca2-65ffa9b4a47c', 'dbe');
    SET session_replication_role TO DEFAULT;

    PERFORM run_migration_svc(
      vdatabase := current_database(),
      vdatabase_id := '455a6e2c-3778-55f9-aca2-65ffa9b4a47c',
      vdomain_name := 'dbe.la',
      vpublic_schema := ARRAY['dashboard_public'],
      vadmin_schema := ARRAY['dashboard_public', 'dashboard_private'],
      vlogo := '{"url":"https://dl.airtable.com/.attachments/47f723ee5ea33d20e03eb7a82fdd74ea/64497b4d/dbe.png","mime":"image/png"}',
      vog_image := '{"url":"https://dl.airtable.com/.attachments/47f723ee5ea33d20e03eb7a82fdd74ea/64497b4d/dbe.png","mime":"image/png"}',
      vfavicon := 'https://dl.airtable.com/.attachments/9d08e1a8ccfb4e250980e91776707f7e/8057a765/favicon.ico',
      vapple_touch_icon := '{"url":"https://dl.airtable.com/.attachments/1d46c02b389e9902b7b70f50a4bec2e8/602c5ec6/logo-192x192.png", "mime":"image/png"}',
      vsite_title := 'Dashboard Earth',
      vsite_description := 'Download our app to get the solutions necessary to balance the climate'
    );

  END;
$LQLMIGRATION$;

DROP FUNCTION run_migration_svc;
DROP FUNCTION migration_init_domain;

COMMIT;

