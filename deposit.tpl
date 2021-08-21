{include file="mheader.tpl"}
        <!-- ============================================================== -->
<!-- End Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
    <div class="row content">
      
        <div class="col-12 text-left">
             <div class="card my-4">
        <h5 class="card-header bg-primary text-white">{{$content.deposit.content}}</h5>
        <div class="card-body">
        {if $alert}
<div class="{$alert_class}">
    <span>{$alert_message}</span>
</div>
{/if}
    
                                    <form method=post name="spendform" action="deposit">
                                        <input type=hidden name=action value=deposit_request>
                     <label class="form-label">{{$content.investmentplans.title}}</label>
                    {foreach from=$index_plans item=p}
    
            <table class="table">
                <tr>
                                                    
                                                  
                    <td colspan=3 align=center class="bg-primary text-white"><b> <input type="radio" name="package_id" data-min="{$p.plans[0].deposit}" value="{$p.id}" {if ($p.a == 1)} checked {/if} />{$p.name|escape:html} for {$p.duration|escape:html}</b>
                    
                    </td>
                    
                </tr>
                {if $p.plans}
                <tr>
                    <td width=200>{{$content.plan.title}}</td>
                    <td width=200>{{$content.amount.content}}({$currency_sign})</td>
                    <td width=200>
                        <nobr>{$p.period} {{$content.profit.title}}</nobr>
                    </td>
                </tr>
                {foreach from=$p.plans item=o}
                <tr>
                    <td>{$o.name|escape:html}</td>
                    <td>{$o.deposit}</td>
                    <td>{$o.percent}</td>
                </tr>
                {/foreach} {/if}
            </table>

            {/foreach}

                                               
                                           <br><br>
                                                <label class="form-label">{{$content.paymentmethods.title}}</label>
                                                <select name="payment_method_id" id="select-payment" onchange="change_payment()" required="" class="form-control custom-select m-b-20 m-r-10 btn dropdown-toggle ">
                                                {if $settings.general.allow_dep_from_acc}
                                                {section name=p loop=$ps}
                                                    {if $ps[p].balance > 0 and $ps[p].status == 1}
                                                        <option value='account_{$ps[p].id}'>Balance {$ps[p].name}</option>
   
                                                     {/if}
                                                {/section}
                                                {/if}
                                                {section name=p loop=$ps}
                                                     {if $ps[p].status}
                                                         <option value='{$ps[p].id}'>{$ps[p].name}</option>
                                                     {/if}
                                                {/section}   
                                                </select>
                                         <br><br>
                                        
                                            
                                                <br>
                                                    <label class="form-label">{{$content.amount.title}}</label>
                                                    <br>
                                                    <input type="number" step="0.00000001" class="form-control" required="" value="" name="amount" placeholder="">
                                              <br>
                                                    <input type="hidden" name="exchange" id="exchange" value="1">
                                                    <input type="hidden" name="action" value="deposit_request">
                                                    </div>
                                                       <div class="card-footer text-muted">
                   <button type="submit" name="submit" value="submit" class="btn btn-primary ml-auto">{{$content.deposit.title}}</button>

                    </div>
                                     
                                    </form>
                                    
                                </div>
                            </div>
                        </div>

                    </div>

          
                    

{include file="mfooter.tpl"}

<script type="text/javascript">
$( "input[type=radio]" ).click(function() {
  var m = $(this).data('min');
  m = m.split(' - ');
  m = m[0].replace("$", "");
  $('input[name=amount]').val(m);
});
</script>