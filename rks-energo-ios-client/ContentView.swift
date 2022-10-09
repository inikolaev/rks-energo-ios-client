//
//  ContentView.swift
//  rks-energo-ios-client
//
//  Created by Igor Nikolaev on 9.10.2022.
//

import SwiftUI
import SwiftSoup

func extractMeasurementsFromHtml() -> [Measurement] {
    let html = """
    <!--[if HTML5]><![endif]-->
    <!doctype html>
    <!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="ru"> <![endif]-->
    <!--[if IE 7 ]>    <html class="ie7 no-css3" lang="ru"> <![endif]-->
    <!--[if IE 8 ]>    <html class="ie8 no-css3" lang="ru"> <![endif]-->
    <!--[if IE 9 ]>    <html class="ie9" lang="ru"> <![endif]-->
    <!--[if (gt IE 9)|!(IE)]><!--> <html lang="ru"> <!--<![endif]-->
    <head>
    <!--[if !HTML5]>
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
      <meta charset="UTF-8">
      <title>&#x041F;&#x043E;&#x043A;&#x0430;&#x0437;&#x0430;&#x043D;&#x0438;&#x044F; ( &#x0437;&#x0430; &#x043F;&#x043E;&#x0441;&#x043B;&#x0435;&#x0434;&#x043D;&#x0438;&#x0435; 7 &#x043C;&#x0435;&#x0441;&#x044F;&#x0446;&#x0435;&#x0432; )</title>
      <link rel="icon" href="/i/favicon.ico" type="image/x-icon">
      <link rel="shortcut icon" href="/i/favicon.ico" type="image/x-icon">
      <link rel="stylesheet" href="/i/css/apex.min.css?v=4.2.1.00.08" type="text/css" />
    <!--[if IE]><link rel="stylesheet" href="/i/css/apex_ie.min.css?v=4.2.1.00.08" type="text/css" /><![endif]-->
    <link rel="stylesheet" href="/i/libraries/jquery-ui/1.8.22/themes/base/jquery-ui.min.css" type="text/css" />




    <script type="text/javascript">
    var apex_img_dir = "/i/", htmldb_Img_Dir = apex_img_dir;
    </script>
    <script src="/i/libraries/apex/minified/desktop_all.min.js?v=4.2.1.00.08" type="text/javascript"></script>
    <script src="/i/libraries/apex/minified/legacy.min.js?v=4.2.1.00.08" type="text/javascript"></script>
    <style> html {visibility:hidden;} </style>
    <script type="text/javascript">
    apex.security.framebreaker("D");
    </script>





    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

      <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
      <link rel="stylesheet" href="/i/themes/theme_26/css/4_2.css?v=4.2.1.00.08">
      <script src="/i/themes/theme_26/js/4_2.js?v=4.2.1.00.08"></script>
    </head>
    <body >
      <!--[if lte IE 6]><div id="outdated-browser">You are using an outdated web browser. For a list of supported browsers, please reference the Oracle Application Express Installation Guide.</div><![endif]-->
      <form action="wwv_flow.accept" method="post" name="wwv_flow" id="wwvFlowForm" novalidate >
    <input type="hidden" name="p_flow_id" value="150" id="pFlowId" /><input type="hidden" name="p_flow_step_id" value="5" id="pFlowStepId" /><input type="hidden" name="p_instance" value="2633814981825" id="pInstance" /><input type="hidden" name="p_page_submission_id" value="9708987780020" id="pPageSubmissionId" /><input type="hidden" name="p_request" value="" id="pRequest" />
      <div id="uBodyContainer"><header id="uHeader">
      
      <hgroup>
        <a href="f?p=150:1:2633814981825" id="uLogo"><span >Личный кабинет абонента ООО "РКС-энерго"</span></a>
        <div class="userBlock">
          <img src="/i/f_spacer.gif" class="navIcon user" alt="">
          <span>TMP@NIKISOFT.RU</span>
          <a href="f?p=150:102:2633814981825::NO:::">Лицевой счет 1401709210 </a><a href="apex_authentication.logout?p_app_id=150&p_session_id=2633814981825">Выйти</a>
        </div>
      </hgroup>
      <nav>
        <ul>
          <li><a href="javascript:apex.submit('Главная');">Главная</a></li><li><a href="javascript:apex.submit('Показания');" class="active">Показания</a></li><li><a href="javascript:apex.submit('Начисления');">Начисления</a></li><li><a href="javascript:apex.submit('Оплаты');">Оплаты</a></li><li><a href="javascript:apex.submit('Приборы учета');">ПУ</a></li><li><a href="javascript:apex.submit('Профиль');">Профиль</a></li>
        </ul>
        
      </nav>
      
    </header>
    <div id="uBreadcrumbs"  class="">
      <ul><li class="active"><span>Показания</span></li> </ul>
      <div class="uBreadcrumbsBG">
        <div class="uLeft"></div>
        <div class="uRight"></div>
      </div>
    </div>

    <div id="uOneCol">
      
      <section class="uIRRegion" id="R2446924093955878"  class="">
      <h1 class="visuallyhidden">Показания счетчиков</h1>
      <table summary="" cellspacing="0" cellpadding="0" border="0" width="100%"><tr><td align="left"><a href="javascript:apex.navigation.redirect(&#x27;f?p=150:6:2633814981825::NO:::&#x27;);" class="uButtonLarge " id="B2554809640341494"  role="button"><span>Передать показания</span></a> </td></tr></table><input type="hidden" name="p_arg_names" value="205931624535890604" /><input type="hidden" name="p_t01" id="P5_X" value="0"><input type="hidden" name="p_arg_checksums" value="205931624535890604_25A25BF0C44B50C0987561015817DE6F"><input type="hidden" id="apexir_REGION_ID" value="R2446924093955878" />
    <div id="apexir_WORKSHEET_REGION" class="apex_worksheet" aria-live="polite"><div id="apexir_DETAIL" class="apex_detail"></div><div id="apexir_REPORT" class="apex_report"><div id="apexir_TOOLBAR" class="apex_toolbar"></div><div id="apexir_WORKSHEET"><div id="apexir_CONTROL_PANEL_DROP" class="drop_panel clearfix" style="display:none"></div><style id="apexir_WORKSHEET_CSS" type="text/css">
    </style>
    <input type="hidden" id="apexir_WORKSHEET_ID" value="2447005000955885" />
    <input type="hidden" id="apexir_APP_USER" value="TMP@NIKISOFT.RU" />
    <input type="hidden" id="apexir_REPORT_ID" value="2447926864956652" />
    <div>
    <div id="apexir_CHART">
    </div>
    <div id="apexir_GROUP_BY">
    </div>
    <div id="apexir_CALENDAR">
    </div>
    <div id="apexir_DATA_PANEL">
    <table summary="">
    <tr><td><table summary="" cellpadding="0" cellspacing="0" border="0" class="apexir_WORKSHEET_DATA" id="2447005000955885">

    <tr><th id="ZNOM_ABON"><div id="apexir_ZNOM_ABON" onclick="gReport.controls.widget(this.id)" style="text-align:center;">Лицевой<br>счет</div></th><th id="DAT_KONT"><div id="apexir_DAT_KONT" onclick="gReport.controls.widget(this.id)" style="text-align:center;">Дата<br>показаний</div></th><th id="MULT"><div id="apexir_MULT" onclick="gReport.controls.widget(this.id)" style="text-align:center;">Зона<br>суток</div></th><th id="POK_KONT_PREVIOUS"><div id="apexir_POK_KONT_PREVIOUS" onclick="gReport.controls.widget(this.id)" style="text-align:center;">Предыдущие<br>показания</div></th><th id="POK_KONT_CURRENT"><div id="apexir_POK_KONT_CURRENT" onclick="gReport.controls.widget(this.id)" style="text-align:center;">Текущие<br>показания</div></th><th id="STATUS"><div id="apexir_STATUS" onclick="gReport.controls.widget(this.id)" style="text-align:center;">Комментарий</div></th></tr>
    <tr class="even"><td  align="left" headers="ZNOM_ABON">1401709210</td><td  align="left" headers="DAT_KONT">09-10-2022</td><td  align="left" headers="MULT">&#x0414;&#x043D;&#x0435;&#x0432;&#x043D;&#x0430;&#x044F;&#x2F;&#x0441;&#x0443;&#x0442;&#x043E;&#x0447;&#x043D;&#x0430;&#x044F;</td><td  align="right" headers="POK_KONT_PREVIOUS">3 590</td><td  align="right" headers="POK_KONT_CURRENT">3 700</td><td  align="left" headers="STATUS">-</td></tr>
    <tr class="odd"><td  align="left" headers="ZNOM_ABON">1401709210</td><td  align="left" headers="DAT_KONT">10-08-2022</td><td  align="left" headers="MULT">&#x0414;&#x043D;&#x0435;&#x0432;&#x043D;&#x0430;&#x044F;&#x2F;&#x0441;&#x0443;&#x0442;&#x043E;&#x0447;&#x043D;&#x0430;&#x044F;</td><td  align="right" headers="POK_KONT_PREVIOUS">3 590</td><td  align="right" headers="POK_KONT_CURRENT">3 590</td><td  align="left" headers="STATUS">-</td></tr>
    <tr class="even"><td  align="left" headers="ZNOM_ABON">1401709210</td><td  align="left" headers="DAT_KONT">10-08-2022</td><td  align="left" headers="MULT">&#x0414;&#x043D;&#x0435;&#x0432;&#x043D;&#x0430;&#x044F;&#x2F;&#x0441;&#x0443;&#x0442;&#x043E;&#x0447;&#x043D;&#x0430;&#x044F;</td><td  align="right" headers="POK_KONT_PREVIOUS">3 590</td><td  align="right" headers="POK_KONT_CURRENT">3 590</td><td  align="left" headers="STATUS">-</td></tr>
    <tr class="odd"><td  align="left" headers="ZNOM_ABON">1401709210</td><td  align="left" headers="DAT_KONT">10-08-2022</td><td  align="left" headers="MULT">&#x0414;&#x043D;&#x0435;&#x0432;&#x043D;&#x0430;&#x044F;&#x2F;&#x0441;&#x0443;&#x0442;&#x043E;&#x0447;&#x043D;&#x0430;&#x044F;</td><td  align="right" headers="POK_KONT_PREVIOUS">3 584</td><td  align="right" headers="POK_KONT_CURRENT">3 590</td><td  align="left" headers="STATUS">-</td></tr>
    <tr class="even"><td  align="left" headers="ZNOM_ABON">1401709210</td><td  align="left" headers="DAT_KONT">07-08-2022</td><td  align="left" headers="MULT">&#x0414;&#x043D;&#x0435;&#x0432;&#x043D;&#x0430;&#x044F;&#x2F;&#x0441;&#x0443;&#x0442;&#x043E;&#x0447;&#x043D;&#x0430;&#x044F;</td><td  align="right" headers="POK_KONT_PREVIOUS">-</td><td  align="right" headers="POK_KONT_CURRENT">3 584</td><td  align="left" headers="STATUS">-</td></tr>
    </table>
    <tr class="fielddatasmall" align="left"><td>
    </td></tr>
    <tr><td colspan="7" class="pagination" align="left"><span class="fielddata"> 1 - 5 of 5 </span></td></tr>
    </td></tr>
    </table>
    </div>
    </div>
    </div>
    </div></div><div id="apexir_rollover" style="position:absolute;display:none;"><table cellpadding="1" cellspacing="0" border="0" width="100%"><tr><td><span id="apexir_sortup"><img src="/i/ws/dup.gif" alt="Сортировка по возрастанию" title="Сортировка по возрастанию" onclick="gReport.column.order('ASC')" /></span><span id="apexir_sortdown"><img src="/i/ws/ddown.gif" alt="Сортировка по убыванию" title="Сортировка по убыванию" onclick="gReport.column.order('DESC')" /></span><span id="apexir_hide"><img src="/i/ws/trash.gif" alt="Скрыть столбец" title="Скрыть столбец" onclick="gReport.column.hide()" /></span><span id="apexir_break"><img src="/i/ws/break_col.gif" alt="Контрольная точка" title="Контрольная точка" onclick="gReport.column.break_on()" /></span><span id="apexir_info"><img src="/i/ws/info_20x18.gif" alt="Информация о столбце" title="Информация о столбце" onclick="gReport.controls.info()" /></span><span id="apexir_computation"><img src="/i/ws/calc.gif" alt="Вычислить" title="Вычислить" onclick="gReport.controls.computation(false)" /></span></td></tr><tr><td><input title="Поиск" type="text" onkeyup="$d_Find('apexir_rollover_content',this.value,'a');" style="width:95%;" id="apexir_search" /></td></tr></table><div id="apexir_rollover_content"></div></div><span id="apexir_LOADER" style="display:none;" role="alert"><img alt="Processing Request" src="/i/ws/ajax-loader.gif" /></span>
    </section><section class="uRegion  clearfix" id="R2834302875427946" >
      <div class="uRegionHeading">
        <h1>Внимание! Показания только за последние 7 месяцев</h1>
        <span class="uButtonContainer">
          
        </span>
      </div>
      <div class="uRegionContent clearfix">
        
      </div>
    </section>
      
    </div><footer id="uFooter">
      <div class="uFooterContent">
        <div id="customize"></div>
        
        <a href="f?p=150:5:2633814981825:SET_SESSION_SCREEN_READER_ON::::&cs=3128C366F3A71ABF2DB979506F914EE4A">Set Screen Reader Mode On</a>
        <span class="uFooterVersion">
          &#x0412;&#x0435;&#x0440;&#x0441;&#x0438;&#x044F; 0.9
        </span>
      </div>
      <div class="uFooterBG">
        <div class="uLeft"></div>
        <div class="uRight"></div>
      </div>
    </footer>
    </div>
    <input type="hidden" name="p_md5_checksum" value=""  /><input type="hidden" name="p_page_checksum" value="F190B5CE11183EB5D1F0F84BF7888574" id="pPageChecksum" /></form>


    <script type="text/javascript" src="/i/libraries/apex/minified/widget.interactiveReport.min.js?v=4.2.1.00.08"></script>
    <script type="text/javascript">
    var gTable = '2447005000955885';
    var gReport;
    apex.jQuery( document ).ready( function() {
    (function(){gReport = new apex.worksheet.ws('');})();


    });</script>

    </body>
    </html>
    """
    
    do {
        let doc: Document = try SwiftSoup.parse(html)
        let rows = try doc.select("table.apexir_WORKSHEET_DATA tr:has(td)")
        
        let measurements = try rows.enumerated().map { (index, row) in
            let date = try row.select("[headers=DAT_KONT]").text()
            let value = Int(try row.select("[headers=POK_KONT_PREVIOUS]").text().replacingOccurrences(of: " ", with: ""))
            return Measurement(id: index, date: date, value: value)
        }
        
        return Array(measurements)
    } catch {
        return []
    }
}

struct ContentView: View {
    let measurements = extractMeasurementsFromHtml()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(measurements) { measurement in
                        self.measurementView(date: measurement.date, value: measurement.value)
                    }
                }
            }
            .navigationBarTitle("Показания")
        }
    }
    
    func measurementView(date: String, value: Int?) -> some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Дата").font(.footnote).foregroundColor(.secondary)
                        Spacer()
                    }
                    HStack {
                        Text(date)
                        Spacer()
                    }
                }
                Spacer()
                VStack {
                    HStack {
                        Spacer()
                        Text("Показания").font(.footnote).foregroundColor(.secondary)
                    }
                    HStack {
                        Spacer()
                        Text(value != nil ? "\(value!) кВт" : "-")
                    }
                }
            }.padding(.vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
