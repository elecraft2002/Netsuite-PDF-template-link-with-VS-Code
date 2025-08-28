<?xml version="1.0"?>
<!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">
<pdf>
    <head>
        <#assign custlocale=.locale>
        <#assign handle=nstranslation.load({ "collections" :[{ "alias" : "HR" , "collection" : "custcollection_croatian_localization" , "keys" : ["LOC_CONFIG_CZ_STREET_NAME"]}],
            "locales" : [
            custlocale
            ]
            })>
    </head>

    <body>
        <h1>Test jazyka</h1>
        ${custlocale}
        <!-- <#assign custlocale = record.entity.language> -->
        <p>
          <p>Label ads z recordu: ${record.custbody_cb_tr_sub_company_id@label}</p>
          <p>Překlad z translation collection: ${handle.HR.LOC_CONFIG_CZ_STREET_NAME()}</p>
            </p>
    </body>
</pdf>