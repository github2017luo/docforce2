<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ApprovedMailAlert</fullName>
        <description>承認完了通知メールアラート</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ApprovedMail</template>
    </alerts>
    <fieldUpdates>
        <fullName>ApprovedDataTimeUpdate</fullName>
        <field>ApprovedDataTime__c</field>
        <formula>now()</formula>
        <name>承認完了日を更新</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MemoUpdate</fullName>
        <field>Memo__c</field>
        <formula>$User.LastName  +  $User.FirstName + &apos;に却下されています&apos;</formula>
        <name>メモ更新</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StatusUpdateApproved</fullName>
        <field>Status__c</field>
        <literalValue>承認完了</literalValue>
        <name>承認済ステータスにする</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StatusUpdateCanceled</fullName>
        <field>Status__c</field>
        <literalValue>取消</literalValue>
        <name>取消のステータスにする</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StatusUpdateRejected</fullName>
        <field>Status__c</field>
        <literalValue>却下</literalValue>
        <name>却下済のステータスにする</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StatusUpdateRequesting</fullName>
        <field>Status__c</field>
        <literalValue>申請中</literalValue>
        <name>申請中ステータスにする</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
