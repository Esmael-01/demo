<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <xsl:call-template name="IGRP-head"/>
                <!-- TABLE CSS INCLUDES -->
                <link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/datatable/dataTables.bootstrap.css?v={$version}"/>
                <link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/igrp.tables.css?v={$version}"/>
                <!-- SELECT CSS INCLUDES -->
                <link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.min.css?v={$version}"/>
                <link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.style.css?v={$version}"/>
                <!-- DATE CSS INCLUDES -->
                <link rel="stylesheet" type="text/css" href="{$path}/plugins/datepicker2/daterangepicker.css?v={$version}"/>
                <link rel="stylesheet" type="text/css" href="{$path}/plugins/datepicker2/IGRP.daterangepicker.css?v={$version}"/>
                <style/>
            </head>
            <body class="{$bodyClass} sidebar-off">
                <xsl:call-template name="IGRP-topmenu"/>
                <form method="POST" class="IGRP-form" name="formular_default" enctype="multipart/form-data">
                    <div class="container-fluid">
                        <div class="row">
                            <xsl:call-template name="IGRP-sidebar"/>
                            <div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main" id="igrp-contents">
                                <div class="content">
                                    <div class="row row-msg">
                                        <div class="gen-column col-md-12">
                                            <div class="gen-inner">
                                                <xsl:apply-templates mode="igrp-messages" select="rows/content/messages"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row " id="row-e91a678e">
                                        <div class="gen-column col-1-1">
                                            <div class="gen-inner">
                                                <xsl:if test="rows/content/form">
                                                    <div class="box igrp-forms gen-container-item " gen-class="" item-name="form">
                                                        <div class="box-body">
                                                            <div role="form">
                                                                <xsl:apply-templates mode="form-hidden-fields" select="rows/content/form/fields"/>
                                                                <xsl:if test="rows/content/form/fields/aplicacao">
                                                                    <div class="col-sm-3 form-group  gen-fields-holder" item-name="aplicacao" item-type="select">
                                                                        <label for="{rows/content/form/fields/aplicacao/@name}">
                                                                            <xsl:value-of select="rows/content/form/fields/aplicacao/label"/>
                                                                        </label>
                                                                        <select class="form-control select2 true" id="form_aplicacao" name="{rows/content/form/fields/aplicacao/@name}">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/aplicacao"/>
                                                                            </xsl:call-template>
                                                                            <xsl:for-each select="rows/content/form/fields/aplicacao/list/option">
                                                                                <option value="{value}" label="{text}">
                                                                                    <xsl:if test="@selected='true'">
                                                                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                                                                    </xsl:if>
                                                                                    <span>
                                                                                        <xsl:value-of select="text"/>
                                                                                    </span>
                                                                                </option>
                                                                            </xsl:for-each>
                                                                        </select>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/organica">
                                                                    <div class="col-sm-3 form-group  gen-fields-holder" item-name="organica" item-type="select">
                                                                        <label for="{rows/content/form/fields/organica/@name}">
                                                                            <xsl:value-of select="rows/content/form/fields/organica/label"/>
                                                                        </label>
                                                                        <select class="form-control select2 true" id="form_organica" name="{rows/content/form/fields/organica/@name}">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/organica"/>
                                                                            </xsl:call-template>
                                                                            <xsl:for-each select="rows/content/form/fields/organica/list/option">
                                                                                <option value="{value}" label="{text}">
                                                                                    <xsl:if test="@selected='true'">
                                                                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                                                                    </xsl:if>
                                                                                    <span>
                                                                                        <xsl:value-of select="text"/>
                                                                                    </span>
                                                                                </option>
                                                                            </xsl:for-each>
                                                                        </select>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/area_fk">
                                                                    <div class="col-sm-3 form-group  gen-fields-holder" item-name="area_fk" item-type="select">
                                                                        <label for="{rows/content/form/fields/area_fk/@name}">
                                                                            <xsl:value-of select="rows/content/form/fields/area_fk/label"/>
                                                                        </label>
                                                                        <select class="form-control select2 true" id="form_area_fk" name="{rows/content/form/fields/area_fk/@name}">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/area_fk"/>
                                                                            </xsl:call-template>
                                                                            <xsl:for-each select="rows/content/form/fields/area_fk/list/option">
                                                                                <option value="{value}" label="{text}">
                                                                                    <xsl:if test="@selected='true'">
                                                                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                                                                    </xsl:if>
                                                                                    <span>
                                                                                        <xsl:value-of select="text"/>
                                                                                    </span>
                                                                                </option>
                                                                            </xsl:for-each>
                                                                        </select>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/proc_tp_fk">
                                                                    <div class="col-sm-3 form-group  gen-fields-holder" item-name="proc_tp_fk" item-type="select">
                                                                        <label for="{rows/content/form/fields/proc_tp_fk/@name}">
                                                                            <xsl:value-of select="rows/content/form/fields/proc_tp_fk/label"/>
                                                                        </label>
                                                                        <select class="form-control select2 true" id="form_proc_tp_fk" name="{rows/content/form/fields/proc_tp_fk/@name}">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/proc_tp_fk"/>
                                                                            </xsl:call-template>
                                                                            <xsl:for-each select="rows/content/form/fields/proc_tp_fk/list/option">
                                                                                <option value="{value}" label="{text}">
                                                                                    <xsl:if test="@selected='true'">
                                                                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                                                                    </xsl:if>
                                                                                    <span>
                                                                                        <xsl:value-of select="text"/>
                                                                                    </span>
                                                                                </option>
                                                                            </xsl:for-each>
                                                                        </select>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/user_fk">
                                                                    <div class="col-sm-3 form-group  gen-fields-holder" item-name="user_fk" item-type="select">
                                                                        <label for="{rows/content/form/fields/user_fk/@name}">
                                                                            <xsl:value-of select="rows/content/form/fields/user_fk/label"/>
                                                                        </label>
                                                                        <select class="form-control select2 " id="form_user_fk" name="{rows/content/form/fields/user_fk/@name}">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/user_fk"/>
                                                                            </xsl:call-template>
                                                                            <xsl:for-each select="rows/content/form/fields/user_fk/list/option">
                                                                                <option value="{value}" label="{text}">
                                                                                    <xsl:if test="@selected='true'">
                                                                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                                                                    </xsl:if>
                                                                                    <span>
                                                                                        <xsl:value-of select="text"/>
                                                                                    </span>
                                                                                </option>
                                                                            </xsl:for-each>
                                                                        </select>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/status">
                                                                    <div class="col-sm-3 form-group  gen-fields-holder" item-name="status" item-type="select">
                                                                        <label for="{rows/content/form/fields/status/@name}">
                                                                            <xsl:value-of select="rows/content/form/fields/status/label"/>
                                                                        </label>
                                                                        <select class="form-control select2 " id="form_status" name="{rows/content/form/fields/status/@name}">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/status"/>
                                                                            </xsl:call-template>
                                                                            <xsl:for-each select="rows/content/form/fields/status/list/option">
                                                                                <option value="{value}" label="{text}">
                                                                                    <xsl:if test="@selected='true'">
                                                                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                                                                    </xsl:if>
                                                                                    <span>
                                                                                        <xsl:value-of select="text"/>
                                                                                    </span>
                                                                                </option>
                                                                            </xsl:for-each>
                                                                        </select>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/referencia_pedido">
                                                                    <div class="box-head subtitle gen-fields-holder" text-color="1">
                                                                        <span>
                                                                            <xsl:value-of select="rows/content/form/fields/referencia_pedido/label"/>
                                                                        </span>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/requerente">
                                                                    <div class="form-group col-sm-3   gen-fields-holder" item-name="requerente" item-type="text">
                                                                        <label for="{rows/content/form/fields/requerente/@name}">
                                                                            <span>
                                                                                <xsl:value-of select="rows/content/form/fields/requerente/label"/>
                                                                            </span>
                                                                        </label>
                                                                        <input type="text" value="{rows/content/form/fields/requerente/value}" class="form-control " id="{rows/content/form/fields/requerente/@name}" name="{rows/content/form/fields/requerente/@name}" maxlength="250" placeholder="">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/requerente"/>
                                                                            </xsl:call-template>
                                                                        </input>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/num">
                                                                    <div class="form-group col-sm-3   gen-fields-holder" item-name="num" item-type="text">
                                                                        <label for="{rows/content/form/fields/num/@name}">
                                                                            <span>
                                                                                <xsl:value-of select="rows/content/form/fields/num/label"/>
                                                                            </span>
                                                                        </label>
                                                                        <input type="text" value="{rows/content/form/fields/num/value}" class="form-control " id="{rows/content/form/fields/num/@name}" name="{rows/content/form/fields/num/@name}" maxlength="150" placeholder="">
                                                                            <xsl:call-template name="setAttributes">
                                                                                <xsl:with-param name="field" select="rows/content/form/fields/num"/>
                                                                            </xsl:call-template>
                                                                        </input>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/intervalo_entrada">
                                                                    <div class="box-head subtitle gen-fields-holder" text-color="1">
                                                                        <span>
                                                                            <xsl:value-of select="rows/content/form/fields/intervalo_entrada/label"/>
                                                                        </span>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/dt_ini">
                                                                    <div class="form-group col-sm-3  gen-date-picker-wrapper gen-fields-holder" item-name="dt_ini" item-type="date">
                                                                        <label for="{rows/content/form/fields/dt_ini/@name}">
                                                                            <span>
                                                                                <xsl:value-of select="rows/content/form/fields/dt_ini/label"/>
                                                                            </span>
                                                                        </label>
                                                                        <div class="input-group">
                                                                            <input type="text" value="{rows/content/form/fields/dt_ini/value}" data-range="false" class="form-control gen-date-picker " id="dt_ini" name="{rows/content/form/fields/dt_ini/@name}" format="" maxlength="30">
                                                                                <xsl:call-template name="setAttributes">
                                                                                    <xsl:with-param name="field" select="rows/content/form/fields/dt_ini"/>
                                                                                </xsl:call-template>
                                                                            </input>
                                                                            <span class="datepicker-clear fa fa-times"/>
                                                                            <span class="input-group-btn gen-date-icon">
                                                                                <a class="btn btn-default">
                                                                                    <i class="fa fa-calendar"/>
                                                                                </a>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </xsl:if>
                                                                <xsl:if test="rows/content/form/fields/dt_fim">
                                                                    <div class="form-group col-sm-3  gen-date-picker-wrapper gen-fields-holder" item-name="dt_fim" item-type="date">
                                                                        <label for="{rows/content/form/fields/dt_fim/@name}">
                                                                            <span>
                                                                                <xsl:value-of select="rows/content/form/fields/dt_fim/label"/>
                                                                            </span>
                                                                        </label>
                                                                        <div class="input-group">
                                                                            <input type="text" value="{rows/content/form/fields/dt_fim/value}" data-range="false" class="form-control gen-date-picker " id="dt_fim" name="{rows/content/form/fields/dt_fim/@name}" format="" maxlength="30">
                                                                                <xsl:call-template name="setAttributes">
                                                                                    <xsl:with-param name="field" select="rows/content/form/fields/dt_fim"/>
                                                                                </xsl:call-template>
                                                                            </input>
                                                                            <span class="datepicker-clear fa fa-times"/>
                                                                            <span class="input-group-btn gen-date-icon">
                                                                                <a class="btn btn-default">
                                                                                    <i class="fa fa-calendar"/>
                                                                                </a>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </xsl:if>
                                                            </div>
                                                        </div>
                                                        <xsl:apply-templates select="rows/content/form/tools-bar" mode="form-buttons"/>
                                                    </div>
                                                </xsl:if>
                                                <xsl:if test="rows/content/table_1">
                                                    <div class="box box-table-contents gen-container-item " gen-class="" item-name="table_1">
                                                        <div class="box-body ">
                                                            <xsl:apply-templates mode="form-hidden-fields" select="rows/content/table_1/fields"/>
                                                            <div class="table-contents-head">
                                                                <div class="table-contents-inner"></div>
                                                            </div>
                                                            <div class="table-box">
                                                                <div class="table-box-inner">
                                                                    <table id="table_1" class="table table-striped igrp-data-table IGRP_contextmenu " exports="">
                                                                        <thead>
                                                                            <tr>
                                                                                <xsl:if test="rows/content/table_1/fields/num_processo">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/num_processo/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                                <xsl:if test="rows/content/table_1/fields/processo">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/processo/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                                <xsl:if test="rows/content/table_1/fields/eatapa">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/eatapa/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                                <xsl:if test="rows/content/table_1/fields/dt_inicio_proc">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/dt_inicio_proc/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                                <xsl:if test="rows/content/table_1/fields/dt_inicio_etapa">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/dt_inicio_etapa/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                                <xsl:if test="rows/content/table_1/fields/dt_fim_etapa">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/dt_fim_etapa/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                                <xsl:if test="rows/content/table_1/fields/estado">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/estado/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                                <xsl:if test="rows/content/table_1/fields/utilizador">
                                                                                    <th align="left" class=" gen-fields-holder">
                                                                                        <span>
                                                                                            <xsl:value-of select="rows/content/table_1/fields/utilizador/label"/>
                                                                                        </span>
                                                                                    </th>
                                                                                </xsl:if>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <xsl:for-each select="rows/content/table_1/table/value/row[not(@total='yes')]">
                                                                                <tr>
                                                                                    <xsl:apply-templates mode="context-param" select="context-menu"/>
                                                                                    <input name="p_id_task_fk" value="{id_task}" type="hidden"/>
                                                                                    <input name="p_id_task_fk_desc" value="{id_task_desc}" type="hidden"/>
                                                                                    <xsl:if test="num_processo">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/num_processo/label}" class="text" item-name="num_processo">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="num_processo"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="processo">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/processo/label}" class="text" item-name="processo">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="processo"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="eatapa">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/eatapa/label}" class="text" item-name="eatapa">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="eatapa"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="dt_inicio_proc">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/dt_inicio_proc/label}" class="text" item-name="dt_inicio_proc">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="dt_inicio_proc"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="dt_inicio_etapa">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/dt_inicio_etapa/label}" class="text" item-name="dt_inicio_etapa">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="dt_inicio_etapa"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="dt_fim_etapa">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/dt_fim_etapa/label}" class="text" item-name="dt_fim_etapa">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="dt_fim_etapa"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="estado">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/estado/label}" class="text" item-name="estado">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="estado"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                    <xsl:if test="utilizador">
                                                                                        <td align="left" data-row="{position()}" data-title="{../../../fields/utilizador/label}" class="text" item-name="utilizador">
                                                                                            <span class="">
                                                                                                <xsl:value-of select="utilizador"/>
                                                                                            </span>
                                                                                        </td>
                                                                                    </xsl:if>
                                                                                </tr>
                                                                            </xsl:for-each>
                                                                        </tbody>
                                                                    </table>
                                                                    <xsl:apply-templates select="rows/content/table_1/table/context-menu" mode="table-context-menu"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </xsl:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <xsl:call-template name="IGRP-bottom"/>
                </form>
                <!-- FORM JS INCLUDES -->
                <script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/>
                <!-- TABLE JS INCLUDES -->
                <script type="text/javascript" src="{$path}/core/igrp/table/datatable/jquery.dataTables.min.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/core/igrp/table/datatable/dataTables.bootstrap.min.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/core/igrp/table/igrp.table.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/core/igrp/table/bootstrap-contextmenu.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/core/igrp/table/table.contextmenu.js?v={$version}"/>
                <!-- SELECT JS INCLUDES -->
                <script type="text/javascript" src="{$path}/plugins/select2/select2.full.min.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/plugins/select2/select2.init.js?v={$version}"/>
                <!-- DATE JS INCLUDES -->
                <script type="text/javascript" src="{$path}/core/moment/moment.min.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/plugins/datepicker2/daterangepicker.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/plugins/datepicker2/IGRP.daterangepicker.config.js?v={$version}"/>
                <script type="text/javascript" src="{$path}/plugins/datepicker2/locale/dp.locale.pt.js?v={$version}"/>
            </body>
        </html>
    </xsl:template>
    <xsl:include href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=1515618132570"/>
    <xsl:include href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=1515618132570"/>
    <xsl:include href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=1515618132570"/>
    <xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=1515618132570"/>
    <xsl:include href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=1515618132570"/>
    <xsl:include href="../../../xsl/tmpl/IGRP-table-utils.tmpl.xsl?v=1515618132570"/>
</xsl:stylesheet>