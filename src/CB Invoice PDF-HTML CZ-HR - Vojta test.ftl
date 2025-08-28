<?xml version="1.0"?>
<!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">
<pdf>
<head>
<#assign language = .locale>
  
<macrolist>
<macro id="nlheader">

	<table>
		<tr>
			<td class="nameandaddress">		

				<p>
					<strong>${record.custbody_cb_sub_address}</strong>
				</p>

			</td>
				<td class="contacts" width="4%">
				<p>
				  <#if record.custbody_cb_tr_sub_phone?has_content>Tel:</#if><br />
                  <#if record.custbody_cb_tr_sub_fax?has_content>Fax:</#if>
				</p>
			</td>
			<td class="contacts">
              	<p>
					${record.custbody_cb_tr_sub_phone}<br />
                  	<#if record.custbody_cb_tr_sub_fax?has_content>${record.custbody_cb_tr_sub_fax}<br /></#if>
					${record.custbody_cb_tr_email}<br />
					${record.custbody_cb_tr_sub_www}
				</p>
          </td>
		</tr>
		<tr>
			<td colspan="3" class="title" valign="top">				
				<#if language == "cs_CZ">
					 <p align="left">DAŇOVÝ DOKLAD <#if record.custbody_rsm_variable_symbol?has_content>${record.custbody_rsm_variable_symbol}<#else>${record.tranid}</#if></p>
				<#else>
					 <p align="left">TAX INVOICE <#if record.custbody_rsm_variable_symbol?has_content>${record.custbody_rsm_variable_symbol}<#else>${record.tranid}</#if></p>
				</#if>				
			</td>
		</tr>
	</table>

</macro>
<macro id="nlfooter">

<table class="foot">
	<tr>
		<td rowspan="2" class="claim"></td>		
		<td valign="bottom" class="compinfo" align="left">
			<p align="left">
				<strong>                
					${record.subsidiary.legalname}<br />
					${record.custbody_cb_tr_sub_company_id@label}: ${record.custbody_cb_tr_sub_company_id} | 
					${record.custbody_cb_tr_sub_vat_id@label}: ${record.custbody_cb_tr_sub_vat_id}	                    
				</strong>
			</p>
		</td>
		<td rowspan="2" valign="bottom" class="pagenum aright" align="right"><p align="right"><pagenumber/>/<totalpages/></p></td>
	</tr>
	<tr>
		<td valign="bottom" class="reginfo" align="left">
			<p align="left">
				<#if language == "cs_CZ">${record.custbody_cb_inv_registration}<#else>${record.custbody_cb_inv_registration_en}</#if>
			</p>
		</td>
	</tr>

</table>

</macro>
</macrolist>

<link name="twcen" type="font" subtype="truetype" src="https://tstdrv1470428.app.netsuite.com/core/media/media.nl?id=231524&amp;c=TSTDRV1470428&amp;h=yrOnAQZ_G_i70RW_aD_EgQKJysrcgoyIxrDCQOmW6-KPN_SD&amp;_xt=.ttf" src-bold="https://tstdrv1470428.app.netsuite.com/core/media/media.nl?id=231523&amp;c=TSTDRV1470428&amp;h=uZKOKK6UL9hKCTKLJ7ilAImyvvm_FegP-UiV8McqEY4KNJ2B&amp;_xt=.ttf" />

<style type="text/css">
	* { 
		margin: 0; padding: 0;
		font-family: twcen, Tahoma, sans-serif;
	}
	#nlheader {
		height: 28mm;
		margin-bottom: 14mm;
	}
	#nlheader table {
		width: 100%;
		height: 28mm;
	}
	#nlheader table td {
		vertical-align: top;
	}

	.nameandaddress, .contacts {
		font-size: 10pt;
		line-height: 11pt;
		height: 15mm;
		width: 75mm;
	}
	.nameandaddress p, .contacts p {
		margin-top: -4mm;
	}
	.title {
		font-size: 24pt;
		font-weight: bold;
		color: #605e62;	
		height: 8mm;
	}

   table.foot {
    margin-top: 9mm;
		width: 100%;	
	}
	.claim {
		width: 70mm;
	}
	.reginfo, .compinfo {    
		width: 80mm;
		font-size: 8pt;
		line-height: 9pt;
		vertical-align: bottom;
			}
	.reginfo {
		margin-top: 1mm;
	}
  
  .message, .message2 .descr {  		
	  margin-bottom: 4mm;	
		width: 100%;
		font-size: 9pt;    
	} 
	
	#nlbody {	
		height: 205mm !important;
	} 
  .mainTables{ 
  margin-top: 2mm;
  margin-bottom: 2mm;
  
  }
	.box1, .box2 {
    padding-top: 2mm;
    padding-bottom: 2mm;
	border: 1px solid #a7a9ac;
		font-size: 10pt;		
	}
	.box2 {
  width: 91mm !important;
		background: #e6e7e8;		
	}
  .box1 {
    
  margin-left: 0.6mm;
  width: 90mm !important;
		line-height: 11pt;	
	}
	.box2 td, .box2 th {
		padding-top: 0;
		padding-bottom: 0;
		line-height: 11pt;
	}
	.box1 th, .box1 td {
    padding-top: 0;
		padding-bottom: 0;  
		padding-left: 3mm;
		padding-right: 3mm;
		line-height: 11pt;
		vertical-align: middle;
	}
	.box2 th {
		text-align: left;
		font-weight: bold;
	}	
	.box2 th { 
		width: 50%;
		padding-left: 3mm;
	}
	.box2 td {
		padding-right: 3mm;
	}

	.bottomtr td, .bottomtr th {
		height: 3mm;
	}
  	.emptytr td, .emptytr th {
    	height: 5mm;
  }
	.gaptr td {
		height: 5mm;
	}  
	.grey {
		background: #e6e7e8;
	} 
	table {	
		font-size: 10pt;
		table-layout: auto;
		width: 100%;
		border-collapse: collapse;
	}

	table.itemtable, table.sums {
  margin-left: 0.65mm;
  margin-right: 0.65mm;   
		font-size: 8pt;
		width: 100%;		
		table-layout: fixed;
		border-top: 1px solid #a7a9ac;
		border-left: 1px solid #a7a9ac;
	}
	table.itemtable th {
		border-right: 1px solid #a7a9ac;
		border-bottom: 1px solid #a7a9ac;
		padding: 1.5mm 1mm;
		background: #e6e7e8;
		font-weight: bold;
	}
	table.itemtable td {
    font-size: 7pt;	
		border-right: 1px solid #a7a9ac;
		border-bottom: 1px solid #a7a9ac;
		padding: 1.5mm 1mm;
		vertical-align: top;
		line-height: 9pt;
		text-align: left;	
	}
	table.sums {
		border: 1px solid #a7a9ac;		
    margin-top: 2mm;
		margin-bottom: 2mm;    
	}
	table.sums th {
		padding: 0.5mm;
		line-height: 10pt;
    
	}
	table.sums td {
    font-size: 7pt;	
		padding: 0 1mm 1mm 1mm;
		line-height: 8pt;		
	}
  
  table.mainTotal {      
		width: 100%; 	
		page-break-inside: avoid;		
   
	}
  
	table.total {    
		width: 100%;  	
		page-break-inside: avoid;           
	}
  
  .QRcode {   
    height: 38mm; 		  
		vertical-align: top;
    font-size: 8pt;	
    padding-top:-3mm;			
		
	}
  
	table.total td, table.total th {
		padding-top: 0mm;
		padding-bottom: 0mm;
		line-height: 12pt;       
	}    

	table.total td {
		width: 30mm;
	}
	table.total th {
		font-weight: bold;
	}

	.right { float: right; }
	.left { float: left; }
	.aright { text-align: right; }
</style>
</head>


<body header="nlheader" header-height="36mm" footer="nlfooter" footer-height="19mm" size="A4" background-pdf="https://tstdrv1470428.app.netsuite.com/core/media/media.nl?id=231525&amp;c=TSTDRV1470428&amp;h=616d32d21754a191e0d2&amp;_xt=.pdf">


<table class="mainTables">

<tr> <td>

<table  class="box2" align="left">
	<tr class="toptr">
		<td colspan="2"></td>
	</tr>
  
	<tr>		
		<th><p align="left">${record.custbody_rsm_variable_symbol@label}</p></th>	
		<td><p align="left"><strong>${record.custbody_rsm_variable_symbol}</strong></p></td>
	</tr>
  
  	<tr>
		<th><p align="left">${record.createdfrom@label}</p></th>
		<td><p align="left">${record.createdfrom}</p></td>
	</tr>
<#if record.createdfrom.custbody_cb_bill_id?has_content> 
    <tr>
        <th><p align="left"><#if language == "cs_CZ">Zálohová faktura<#else>Advanced Invoice</#if></p></th>
        <td><p align="left">${record.createdfrom.custbody_cb_bill_id}</p></td>
    </tr>
</#if>
  
<#if record.custbody_rsm_constant_symbol?has_content>
  	<tr>		
		<th><p align="left">${record.custbody_rsm_constant_symbol@label}</p></th>	
		<td><p align="left">${record.custbody_rsm_constant_symbol}</p></td>
	</tr>
</#if>

<#if record.custbody_rsm_specific_symbol?has_content>
  	<tr>		
		<th><p align="left">${record.custbody_rsm_specific_symbol@label}</p></th>	
		<td><p align="left">${record.custbody_rsm_specific_symbol}</p></td>
	</tr>
</#if>
	<tr>
		<th><p align="left"><#if language == "cs_CZ">DUZP<#else>${record.trandate@label}</#if></p></th>
		<td><p align="left"><#if record.custbody_date_of_taxable_supply?has_content>${record.custbody_date_of_taxable_supply}<#else>${record.trandate}</#if></p></td>
	</tr>
	<tr>
		<th><p align="left">${record.custbody_cb_issue_date@label}</p></th>
		<td><p align="left">${record.custbody_cb_issue_date}</p></td>
	</tr>
	<tr>
		<th><p align="left">${record.duedate@label}</p></th>
		<td><p align="left">${record.duedate}</p></td>
	</tr>
	<tr>
		<th><p align="left">${record.custbody_cb_issued_by@label}</p></th>
		<td><p align="left">${record.custbody_cb_issued_by}</p></td>
	</tr>
	<tr>
		<th><p align="left">${record.currency@label}</p></th>
		<td><p align="left">${record.currencyname}</p></td>
	</tr>
		
	<tr>
		<th><p align="left">${record.exchangerate@label}</p></th>
		<td><p align="left">${record.exchangerate?string(",##0.000")}</p></td>
	</tr> 
	<tr>
		<th><p align="left">${record.otherrefnum@label}</p></th>
		<td><p align="left">${record.otherrefnum}</p></td>
	</tr>
	<tr>
		<th><p align="left">${record.custbody_cb_inv_bank_acc_nbr@label}</p></th>
		<td><p align="left">${record.custbody_cb_inv_bank_acc_nbr}<#if record.custbody_cb_bank_account.custrecord_cb_bank_code?has_content>/${record.custbody_cb_bank_account.custrecord_cb_bank_code}</#if></p></td>
	</tr>
	<tr>
		<th><p align="left">${record.custbody_cb_inv_bank_name@label}</p></th>
		<td><p align="left">${record.custbody_cb_inv_bank_name}</p></td>
	</tr>	
	<tr>
		<th><p align="left">${record.custbody_cb_inv_swift@label}</p></th>
		<td><p align="left">${record.custbody_cb_inv_swift}</p></td>
	</tr>
	<tr>
		<th><p align="left">${record.custbody_cb_inv_iban@label}</p></th>
		<td><p align="left">${record.custbody_cb_inv_iban}</p></td>
	</tr> 
	<tr>
		<th><p align="left">${record.custbody_cb_inv_payment_method@label}</p></th>
		<td><p align="left">${record.custbody_cb_inv_payment_method}</p></td>
	</tr> 
  	<#if record.subsidiary?has_content>
		<#if record.custbody_cb_tr_is_manufacturig><tr>
			<th><p align="left">${record.shipmethod@label}</p></th>
			<td><p align="left">${record.shipmethod}</p></td>
		</tr>
		<tr>
			<th><p align="left"><#if language == "cs_CZ">Dodací podmínky<#else>${record.custbody_delivery_terms@label}</#if></p></th>
			<td><p align="left">${record.custbody_delivery_terms}</p></td>
		</tr>
    	</#if>
    <#else>
		<#if companyInformation.custrecord_cb_is_manufacturing = true><tr>
			<th><p align="left">${record.shipmethod@label}</p></th>
			<td><p align="left">${record.shipmethod}</p></td>
		</tr>
		<tr>
			<th><p align="left"><#if language == "cs_CZ">Dodací podmínky<#else>${record.custbody_delivery_terms@label}</#if></p></th>
			<td><p align="left">${record.custbody_delivery_terms}</p></td>
		</tr>
    	</#if>
    </#if>

</table>

</td><td rowspan="2">

<table class="box1" align="right">
<tr class="toptr">
		<td></td>
	</tr>	
<tr>
		<td valign="middle">			
			<span align="left" style="font-weight: bold;"><#if language == "cs_CZ">Odběratel<#else>Customer</#if></span><br />
			<span align="left">${record.billaddress}</span>
		</td>
	</tr>	

	<tr>		
		<td><p align="left"><strong><#if language == "cs_CZ">IČ<#else>Company ID</#if></strong> ${record.entity.custentity_cb_companyid}</p></td>	
	</tr>

	<tr>
		<td><p align="left"><strong><#if language == "cs_CZ">DIČ<#else>Tax ID</#if></strong> ${record.entity.vatregnumber}</p></td> 	
	</tr>	
  
  <tr class="emptytr"><td></td></tr>

	<tr>
		<td>
			<span align="left" style="line-height: 12pt; font-weight: bold;"><#if language == "cs_CZ">Místo dodání<#else>${record.shipaddress@label}</#if></span><br />
			<span align="left">${record.shipaddress}</span>
		</td>
	</tr>

<#if record.custbody_cb_contact_person_source?has_content>
<tr>		
		<th><p align="left"><strong><#if language == "cs_CZ">Kontaktní osoba<#else>Contact person</#if></strong> ${record.custbody_cb_contact_person_source.firstname} ${record.custbody_cb_contact_person_source.lastname}</p></th>	
</tr>


<tr>		
		<th><p align="left"><strong>Email</strong> ${record.custbody_cb_contact_person_source.email}</p></th>	
</tr>	


<tr>		
		<th><p align="left"><strong><#if language == "cs_CZ">Telefon<#else>Phone</#if></strong> ${record.custbody_cb_contact_person_source.phone}</p></th>	
</tr>
</#if>

</table>

</td></tr>
</table>

<#if record.custbody_print_form_information?has_content>
<table class="descr">
	<tr>
		<td>
			<p align="left"> ${record.custbody_print_form_information} </p>				
		</td>
	</tr>
</table>
</#if>

<#if record.item?has_content>
<table class="itemtable">
<#list record.item as item><#if item_index==0>
<thead>
	<tr>
	<th colspan="12"><p align="left"><#if language == "cs_CZ">Položka<#else>Item</#if></p></th>
	<th colspan="14"><p align="left"><#if language == "cs_CZ">Popis<#else>Description</#if></p></th>
	<#if record.subsidiary?has_content>
		<#if record.custbody_cb_tr_is_manufacturig>
 		<th colspan="6"><p align="left"><#if language == "cs_CZ">Země původu<#else>Origin</#if></p></th>
    	<th colspan="8"><p align="left"><#if language == "cs_CZ">Sériové číslo<#else>Serial Number</#if></p></th>
    	</#if>
    <#else>
		<#if companyInformation.custrecord_cb_is_manufacturing>
 		<th colspan="6"><p align="left"><#if language == "cs_CZ">Země původu<#else>Origin</#if></p></th>
   		<th colspan="8"><p align="left"><#if language == "cs_CZ">Sériové číslo<#else>Serial Number</#if></p></th>
		</#if>
    </#if>
 	<th colspan="8"><p align="right"><#if language == "cs_CZ">Cena za kus<#else>Rate</#if></p></th>
    <th colspan="3"><p align="center"><#if language == "cs_CZ">Ks<#else>Pcs</#if></p></th>
	<th colspan="8"><p align="right"><#if language == "cs_CZ">Celkem<#else>Amount</#if></p></th>
	<th colspan="3"><p align="center"><#if language == "cs_CZ">DPH%<#else>VAT</#if></p></th>
	<th colspan="6"><p align="right"><#if language == "cs_CZ">DPH<#else>VAT Amount</#if></p></th>
	<th colspan="8"><p align="right"><#if language == "cs_CZ">Celkem s DPH<#else>Gross Amt</#if></p></th>
	</tr>
</thead>
</#if>

<tr>	

	<td colspan="12"><p align="left">${item.item}</p></td>	
	<td colspan="14"><p align="left">${item.description}</p></td>
  	<#if record.subsidiary?has_content>
		<#if record.custbody_cb_tr_is_manufacturig>
  		<td colspan="6"><p align="left">${item.item.countryofmanufacture}</p></td>
 		<td colspan="8"><p align="left">${item.inventorydetail}</p></td>
    	</#if>
    <#else>
		<#if companyInformation.custrecord_cb_is_manufacturing>
  		<td colspan="6"><p align="left">${item.item.countryofmanufacture}</p></td>
 		<td colspan="8"><p align="left">${item.inventorydetail}</p></td>
		</#if>
    </#if>
 	<td colspan="8"><p align="right">${item.rate}</p></td>
   	<td colspan="3"><p align="center">${item.quantity}</p></td>
	<td colspan="8"><p align="right">${item.amount}</p></td>
	<td colspan="3"><p align="right">${item.taxrate1}</p></td>
	<td colspan="6"><p align="right">${item.tax1amt}</p></td>   
	<td colspan="8"><p align="right">${item.grossamt}</p></td>
	</tr>
</#list>

</table>

<table class="sums">
	<tr>
		<th colspan="10" align="left"></th>
		<th colspan="10" align="left"><p align="left"><strong><#if language == "cs_CZ">Rekapitulace DPH<#else>Tax Summary</#if></strong></p></th>
		<th colspan="6" align="right"><p align="right"><strong><#if language == "cs_CZ">Základ daně v CZK<#else>VAT Base in CZK</#if></strong></p></th>
		<th colspan="4" align="right"><p align="right"><strong><#if language == "cs_CZ">Sazba DPH<#else>VAT Rate</#if></strong></p></th>	
		<th colspan="4" align="right"><p align="right"><strong><#if language == "cs_CZ">Daň v CZK<#else>VAT in CZK</#if></strong></p></th>
		<th colspan="4" align="right"><p align="right"><strong><#if language == "cs_CZ">Celkem v CZK<#else>Total in CZK</#if></strong></p></th>		
	</tr>
<#if (record.custbody_cb_cz_tax_base_zrate?length >= 3)>
	<tr>
		<td colspan="10" align="left"></td>
		<td colspan="10" align="left"><p align="left"></p></td>
		<td colspan="6" align="right"><p align="right"><#setting locale="cs_CZ">${record.custbody_cb_cz_tax_base_zrate?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">0%</p></td>	
		<td colspan="4" align="right"><p align="right">0</p></td>
		<td colspan="4" align="right"><p align="right">${record.custbody_cb_cz_tax_base_zrate?string(",##0.00")}</p></td>
	</tr>
</#if>  
<#if (record.custbody_cb_cz_tax_base_r10rate?length >= 3)> 
	<tr>
		<td colspan="10" align="left"></td>
		<td colspan="10" align="left"><p align="left"></p></td>
		<td colspan="6" align="right"><p align="right"><#setting locale="cs_CZ">${record.custbody_cb_cz_tax_base_r10rate?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">10%</p></td>	
		<td colspan="4" align="right"><p align="right">${record.custbody_cb_cz_tax_r10rate?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">${(record.custbody_cb_cz_tax_base_r10rate + record.custbody_cb_cz_tax_r10rate)?string(",##0.00")}</p></td>
		</tr>
</#if>
<#if (record.custbody_cb_cz_tax_base_rrate?length >= 3)> 
	<tr>
		<td colspan="10" align="left"></td>
		<td colspan="10" align="left"><p align="left"></p></td>
		<td colspan="6" align="right"><p align="right"><#setting locale="cs_CZ">${record.custbody_cb_cz_tax_base_rrate?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">15%</p></td>	
		<td colspan="4" align="right"><p align="right">${record.custbody_cb_cz_tax_rrate?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">${(record.custbody_cb_cz_tax_base_rrate + record.custbody_cb_cz_tax_rrate)?string(",##0.00")}</p></td>
	 	</tr>
</#if>
<#if (record.custbody_cb_cz_tax_base_srate?length >= 3)>
	<tr>
		<td colspan="10" align="left"></td>
		<td colspan="10" align="left"><p align="left"></p></td>
		<td colspan="6" align="right"><p align="right"><#setting locale="cs_CZ">${record.custbody_cb_cz_tax_base_srate?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">21%</p></td>	
		<td colspan="4" align="right"><p align="right">${record.custbody_cb_cz_tax_srate?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">${(record.custbody_cb_cz_tax_base_srate + record.custbody_cb_cz_tax_srate)?string(",##0.00")}</p></td>
		</tr>
</#if>


<#if record.custbody_cb_adv_inv_base_z gt 0 || record.custbody_cb_adv_inv_base_z lt 0>
 	<tr>
		<td colspan="10" align="left"></td>
		<th colspan="10" align="left"><p align="left"><strong><#if language == "cs_CZ">Daňový doklad k přijaté platbě<#else>Advance Invoice Tax Document</#if> 0%</strong></p></th>
		<td colspan="6" align="right"><p align="right">-${record.custbody_cb_adv_inv_base_z?abs?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">0%</p></td>
		<td colspan="4" align="right"><p align="right">0</p></td>
		<td colspan="4" align="right"><p align="right">-${record.custbody_cb_adv_inv_base_z?abs?string(",##0.00")}</p></td>
	</tr>    
</#if>

<#if (record.custbody_cb_adv_inv_base_sr gt 0 || record.custbody_cb_adv_inv_base_sr lt 0) && (record.custbody_cb_adv_inv_tax_sr gt 0 || record.custbody_cb_adv_inv_tax_sr lt 0)>
 	<tr>
		<td colspan="10" align="left"></td>
		<th colspan="10" align="left"><p align="left"><strong><#if language == "cs_CZ">Daňový doklad k přijaté platbě<#else>Advance Invoice Tax Document</#if> 10%</strong></p></th>
		<td colspan="6" align="right"><p align="right">-${record.custbody_cb_adv_inv_base_sr?abs?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">10%</p></td>
		<td colspan="4" align="right"><p align="right">-${record.custbody_cb_adv_inv_tax_sr?abs?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">-${(record.custbody_cb_adv_inv_base_sr?abs + record.custbody_cb_adv_inv_tax_sr?abs)?string(",##0.00")}</p></td>
	</tr>    
</#if>

<#if (record.custbody_cb_adv_inv_base_r gt 0 || record.custbody_cb_adv_inv_base_r lt 0) && (record.custbody_cb_adv_inv_tax_r gt 0 || record.custbody_cb_adv_inv_tax_r lt 0)>
 	<tr>
		<td colspan="10" align="left"></td>
		<th colspan="10" align="left"><p align="left"><strong><#if language == "cs_CZ">Daňový doklad k přijaté platbě<#else>Advance Invoice Tax Document</#if> 15%</strong></p></th>
		<td colspan="6" align="right"><p align="right">-${record.custbody_cb_adv_inv_base_r?abs?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">15%</p></td>
		<td colspan="4" align="right"><p align="right">-${record.custbody_cb_adv_inv_tax_r?abs?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">-${(record.custbody_cb_adv_inv_base_r?abs + record.custbody_cb_adv_inv_tax_r?abs)?string(",##0.00")}</p></td>
	</tr>
</#if>

<#if (record.custbody_cb_adv_inv_base_s gt 0 || record.custbody_cb_adv_inv_base_s lt 0) && (record.custbody_cb_adv_inv_tax_s gt 0 || record.custbody_cb_adv_inv_tax_s lt 0)>
 	<tr>
		<td colspan="10" align="left"></td>
		<th colspan="10" align="left"><p align="left"><strong><#if language == "cs_CZ">Daňový doklad k přijaté platbě<#else>Advance Invoice Tax Document</#if> 21%</strong></p></th>
		<td colspan="6" align="right"><p align="right">-${record.custbody_cb_adv_inv_base_s?abs?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">21%</p></td>
		<td colspan="4" align="right"><p align="right">-${record.custbody_cb_adv_inv_tax_s?abs?string(",##0.00")}</p></td>
		<td colspan="4" align="right"><p align="right">-${(record.custbody_cb_adv_inv_base_s?abs + record.custbody_cb_adv_inv_tax_s?abs)?string(",##0.00")}</p></td>
	</tr>
</#if>

</table>

</#if>

<table class="mainTotal">  
	<tr>
		<td>

          <#setting locale="cs_CZ">  
          <#assign IBAN = record.custbody_cb_bank_account.custrecord_cb_iban>  
          <#assign amountPaid = 0 <#--  (record.amountremaining)?string("#0.00")?replace(",",".")?replace(" ","")  -->>
          <#assign BIC = record.custbody_cb_bank_account.custrecord_cb_swift>
            
          <#assign subsidiaryName = record.subsidiary>
          <#if subsidiary.legalname?has_content>
              <#assign subsidiaryName = subsidiary.legalname> 
              <#if subsidiary.legalname?length gt 35>
                 <#assign subsidiaryName =subsidiary.legalname[0..34]>
              </#if>
          <#else>
              <#if record.subsidiary?length gt 35>
                <#assign subsidiaryName =record.subsidiary[0..34]>
             </#if>
          </#if>
         

        <#if IBAN?has_content>
        <#assign IBAN = record.custbody_cb_bank_account.custrecord_cb_iban?replace(" ","")>
          <#if BIC?has_content>
           <#assign uniqueQRcode="SPD*1.0*ACC:"+ IBAN +"+"+BIC+"*AM:"+ amountPaid +"*CC:"+ record.currency +"*RN:"+ subsidiaryName +"*X-VS:"+ record.custbody_rsm_variable_symbol +"*X-SS:"+ record.custbody_rsm_specific_symbol +"*X-KS:"+ record.custbody_rsm_constant_symbol +"">
            <#else>
          <#assign uniqueQRcode="SPD*1.0*ACC:"+ IBAN +"*AM:"+ amountPaid +"*CC:"+ record.currency +"*RN:"+ subsidiaryName +"*X-VS:"+ record.custbody_rsm_variable_symbol +"*X-SS:"+ record.custbody_rsm_specific_symbol +"*X-KS:"+ record.custbody_rsm_constant_symbol +"">
        </#if>

           <table class="QRcode">
             <tr>
                <td align="left">
                   <barcode codetype="qrcode" showtext="false" value="${uniqueQRcode}" width="55%" height="55%"/>
                <p style="padding-top: -4mm; font-size: 8pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<#if language == "cs_CZ">QR Platba<#else>QR Payment</#if></p>
                </td>
             </tr>
          </table>
        </#if>

</td><td>

<table class="total">  

<#if record.taxtotal?has_content>

	<tr>
		<th align="right" valign="middle">${record.subtotal@label}</th>
		<td align="right" valign="middle">${record.subtotal}</td>
	</tr>
	<tr>
		<th align="right" valign="middle">${record.taxtotal@label}</th>
		<td align="right" valign="middle">${record.taxtotal}</td>
	</tr>
</#if>
  <#if record.shippingcost?has_content>
  <tr>
	<th align="right" valign="middle"><#if language == "cs_CZ">Přepravní náklady<#else>${record.shippingcost@label}</#if></th>
		<td align="right" valign="middle">${record.shippingcost}</td>
	</tr>
</#if>
	<tr>
		<th align="right" valign="middle">${record.total@label}</th>
		<td align="right" valign="middle">${record.total}</td>
	</tr>

  <tr>
		<th style="padding-top: 2mm;" align="right" valign="middle"><#if record.createdfrom.custbody_cb_bill_id?has_content><#if language == "cs_CZ">Uhrazeno zálohou č.<#else>Prepayment #</#if>${record.createdfrom.custbody_cb_bill_id}<#else>${record.amountpaid@label}</#if></th>
		<td align="right" valign="middle">${record.amountpaid}</td>
  </tr>    

	<tr>
		<th align="right" valign="middle">${record.amountremaining@label}</th>
		<td align="right" valign="middle">${record.amountremaining}</td>
	</tr>

      <tr>
        <th align="right" valign="middle">${record.payingtransaction.tranid}</th>
        <td align="right" valign="middle">${record.applyingtransaction.internalid}</td>
      </tr>          
</table>

</td></tr> 
</table>

<#if record.custbody_another_information?has_content>
<table class="message" valign="bottom">
  
<tr>
		<td valign="bottom">
			<p align="left"> ${record.custbody_another_information}</p>		
		</td>
</tr>
</table>
</#if>

<#if record.custbody_cb_inv_message.custrecord_cb_invmess_message?has_content>
<table class="message2" valign="bottom" >
	<tr>
		<td valign="bottom">
			<p align="left">${record.custbody_cb_inv_message.custrecord_cb_invmess_message}</p>		
		</td>
	</tr>
</table>
</#if>
<#if record.custbody_cb_tran_descr?has_content>
<table class="message2" valign="bottom">

	<tr>
		<td valign="bottom">
			<p align="left"> ${record.custbody_cb_tran_descr}</p>			
		</td>
	</tr>
</table>

</#if>

 

</body>
</pdf>
