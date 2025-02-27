.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final DATA_GSM_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_GSM_SMS_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_LOCKSCREEN_ALERT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_LOCKSCREEN_ALERT_MESSAGE_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_SMSC"

.field public static final IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.PUSH_CONFIRM"

.field public static final RESULT_SMS_ALL_MEMORY_FULL:I = 0x6

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_SIM_MEMORY_FULL:I = 0x5

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SCPT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SCPT_RECEIVED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_RECEIVED"

.field public static final WAP_PUSH_DM_SET_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.SET_DM"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION_TMO:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED_MYPHONEBOOK"

.field public static final WAP_PUSH_GSM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_GSM_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final WAP_PUSH_SLC_RECEIVED_ACTION:Ljava/lang/String; = "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCbMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/CbMessage;
    .locals 9
    .parameter "intent"

    .prologue
    .line 989
    const-string/jumbo v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v1, v7

    check-cast v1, [Ljava/lang/Object;

    .line 990
    .local v1, messages:[Ljava/lang/Object;
    array-length v7, v1

    new-array v4, v7, [[B

    .line 991
    .local v4, pduObjs:[[B
    const-string/jumbo v7, "simSlot"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 993
    .local v6, simSlot:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_0

    .line 994
    aget-object v7, v1, v0

    check-cast v7, [B

    check-cast v7, [B

    aput-object v7, v4, v0

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_0
    array-length v7, v4

    new-array v5, v7, [[B

    .line 997
    .local v5, pdus:[[B
    array-length v3, v5

    .line 998
    .local v3, pduCount:I
    new-array v2, v3, [Landroid/telephony/gsm/CbMessage;

    .line 999
    .local v2, msgs:[Landroid/telephony/gsm/CbMessage;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1000
    aget-object v7, v4, v0

    aput-object v7, v5, v0

    .line 1001
    aget-object v7, v5, v0

    invoke-static {v7, v6}, Landroid/telephony/gsm/CbMessage;->createFromPdu([BI)Landroid/telephony/gsm/CbMessage;

    move-result-object v7

    aput-object v7, v2, v0

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1003
    :cond_1
    return-object v2
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 10
    .parameter "intent"

    .prologue
    .line 969
    const-string/jumbo v8, "pdus"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v2, v8

    check-cast v2, [Ljava/lang/Object;

    .line 970
    .local v2, messages:[Ljava/lang/Object;
    const-string v8, "format"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, format:Ljava/lang/String;
    const-string/jumbo v8, "simSlot"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 972
    .local v7, simSlot:I
    array-length v8, v2

    new-array v5, v8, [[B

    .line 974
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 975
    aget-object v8, v2, v1

    check-cast v8, [B

    check-cast v8, [B

    aput-object v8, v5, v1

    .line 974
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 977
    :cond_0
    array-length v8, v5

    new-array v6, v8, [[B

    .line 978
    .local v6, pdus:[[B
    array-length v4, v6

    .line 979
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 980
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 981
    aget-object v8, v5, v1

    aput-object v8, v6, v1

    .line 982
    aget-object v8, v6, v1

    invoke-static {v8, v0, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;I)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 980
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 984
    :cond_1
    return-object v3
.end method
