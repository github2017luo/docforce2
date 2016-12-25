package jp.nyasba.tool.docforce2.domain.field

import groovy.util.slurpersupport.GPathResult

/**
 * 通貨フィールド
 */
class SfdcCurrencyField implements SfdcField {

    def fieldXml

    def SfdcCurrencyField(GPathResult fieldXml){
        this.fieldXml = fieldXml
    }

    @Override
    def String ラベル(){
        return fieldXml.label
    }

    @Override
    String API参照名() {
        return fieldXml.fullName
    }

    @Override
    String タイプ() {
        return fieldXml.type
    }

    @Override
    String length() {
        return "${fieldXml.precision},${fieldXml.scale}"
    }

    @Override
    String デフォルト値or選択リスト値() {
        return fieldXml.defaultValue
    }

    @Override
    String 数式() {
        return fieldXml.formula
    }

    @Override
    String ヘルプテキスト() {
        return fieldXml.inlineHelpText
    }

    @Override
    String 必須() {
        return  fieldXml.required == "true" ? "○" : ""
    }

    @Override
    String 外部ID() {
        return "" // 外部IDにはできない
    }

    @Override
    String 説明() {
        return fieldXml.description
    }
}
