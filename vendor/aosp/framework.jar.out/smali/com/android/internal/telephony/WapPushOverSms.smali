.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private mBlockedMmsReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPushOrigAddr:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private mWapPushAddress:Ljava/lang/String;

.field private mWapPushTimeStamp:Ljava/lang/String;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 5
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 81
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 85
    iput-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 949
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WapPushOverSms$1;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBlockedMmsReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 152
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBlockedMmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.enterprise.restriction.SEND_BLOCKED_MMS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/SMSDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    return-object v0
.end method

.method private dispatchWapPdu_CON013([BIILjava/lang/String;IIZ)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "isVaildHeader"

    .prologue
    const/4 v5, 0x0

    .line 669
    add-int v1, p5, p6

    .line 670
    .local v1, dataIndex:I
    array-length v3, p1

    sub-int/2addr v3, v1

    new-array v0, v3, [B

    .line 671
    .local v0, data:[B
    array-length v3, v0

    invoke-static {p1, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string/jumbo v3, "transactionId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const-string/jumbo v3, "pduType"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 680
    if-nez p7, :cond_0

    .line 681
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 684
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 738
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method private dispatchWapPdu_DSNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 774
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 775
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED_MYPHONEBOOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 779
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 805
    :goto_0
    return-void

    .line 795
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 800
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 801
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    const-string v1, "WAP PUSH"

    const-string v2, "ds noti intent is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I
    .locals 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 812
    const/4 v6, 0x1

    .line 814
    .local v6, ret:I
    new-array v4, p5, [B

    .line 815
    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    add-int v3, p4, p5

    .line 817
    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .line 818
    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    const-string/jumbo v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 823
    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 824
    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 825
    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 828
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive EMN : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    sparse-switch p7, :sswitch_data_0

    .line 887
    :goto_0
    return v6

    .line 832
    :sswitch_0
    const-string v7, "application/vnd.docomo.pf"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-wide/32 v7, 0x9056

    cmp-long v7, p8, v7

    if-nez v7, :cond_1

    .line 835
    const-string v7, "com.nttdocomo.email.service"

    const-string v8, "com.nttdocomo.email.service.ImodeMailService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 837
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 838
    const/4 v6, -0x1

    .line 840
    :cond_0
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : i-mode.net"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 843
    :cond_1
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 848
    :sswitch_1
    const-string v7, "application/vnd.syncml.notification"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-wide/16 v7, 0x7

    cmp-long v7, p8, v7

    if-nez v7, :cond_3

    .line 851
    const-string v7, "jp.co.nttdocomo.fota"

    const-string v8, "jp.co.nttdocomo.fota.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_2

    .line 853
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 854
    const/4 v6, -0x1

    .line 856
    :cond_2
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : fota"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 859
    :cond_3
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    :sswitch_2
    const-string v7, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const-wide/32 v7, 0x905c

    cmp-long v7, p8, v7

    if-nez v7, :cond_5

    .line 867
    const-string v7, "jp.co.nttdocomo.carriermail"

    const-string v8, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    .line 869
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 870
    const/4 v6, -0x1

    .line 872
    :cond_4
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : Carrier Mail"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 874
    :cond_5
    const-wide/16 v7, 0x9

    cmp-long v7, p8, v7

    if-nez v7, :cond_7

    .line 876
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v7, :cond_6

    .line 877
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v8, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 878
    const/4 v6, -0x1

    .line 880
    :cond_6
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : mopera U"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 883
    :cond_7
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 830
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x30a -> :sswitch_2
        0x310 -> :sswitch_0
    .end sparse-switch
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 712
    new-array v2, p5, [B

    .line 713
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    add-int v1, p4, p5

    .line 715
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 716
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 723
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 725
    const-string/jumbo v4, "simSlot"

    iget-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 690
    new-array v0, p5, [B

    .line 691
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 698
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 700
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 701
    const-string/jumbo v2, "origaddr"

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    :cond_0
    const-string/jumbo v2, "simSlot"

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .locals 4
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 750
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 756
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 758
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 759
    const-string/jumbo v1, "origaddr"

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method private dispatchWapPdu_SLC([BIIIILjava/lang/String;IJ)I
    .locals 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 903
    const/4 v6, 0x1

    .line 905
    .local v6, ret:I
    new-array v4, p5, [B

    .line 906
    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    add-int v3, p4, p5

    .line 908
    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .line 909
    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string/jumbo v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 915
    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 916
    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 919
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive SLC : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v7, "application/vnd.syncml+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-wide/32 v7, 0x905f

    cmp-long v7, p8, v7

    if-nez v7, :cond_1

    .line 924
    const-string v7, "com.nttdocomo.android.syncmlapp"

    const-string v8, "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 926
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 927
    const/4 v6, -0x1

    .line 934
    :cond_0
    :goto_0
    return v6

    .line 931
    :cond_1
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 54
    .parameter "pdu"

    .prologue
    .line 181
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rx: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v38, 0x0

    .line 184
    .local v38, index:I
    add-int/lit8 v39, v38, 0x1

    .end local v38           #index:I
    .local v39, index:I
    aget-byte v5, p1, v38

    and-int/lit16 v7, v5, 0xff

    .line 185
    .local v7, transactionId:I
    add-int/lit8 v38, v39, 0x1

    .end local v39           #index:I
    .restart local v38       #index:I
    aget-byte v5, p1, v39

    and-int/lit16 v8, v5, 0xff

    .line 186
    .local v8, pduType:I
    const/4 v10, 0x0

    .line 188
    .local v10, headerLength:I
    const/4 v5, 0x6

    if-eq v8, v5, :cond_0

    const/4 v5, 0x7

    if-eq v8, v5, :cond_0

    .line 190
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v5, 0x1

    .line 662
    .end local v7           #transactionId:I
    .end local v8           #pduType:I
    :goto_0
    return v5

    .line 194
    .restart local v7       #transactionId:I
    .restart local v8       #pduType:I
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    const-string v5, "WAP PUSH"

    const-string v6, "Received PDU. Header Length error."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v5, 0x2

    goto :goto_0

    .line 206
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v10, v5

    .line 207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/lit8 v38, v5, 0x2

    .line 209
    move/from16 v9, v38

    .line 223
    .local v9, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 224
    const-string v5, "WAP PUSH"

    const-string v6, "Received PDU. Header Content-Type error."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v5, 0x2

    goto :goto_0

    .line 228
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    .line 230
    .local v28, binaryContentType:J
    move/from16 v40, v38

    .line 232
    .local v40, index_con013:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v12, v5

    .line 236
    .local v12, iBinaryContentType:I
    if-nez v11, :cond_7

    .line 238
    sparse-switch v12, :sswitch_data_0

    .line 309
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received PDU. Unsupported Content-Type = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 240
    :sswitch_0
    const-string v11, "application/vnd.oma.drm.rights+xml"

    .line 373
    :goto_1
    const/16 v45, 0x0

    .line 374
    .local v45, isValidContentType:Z
    const/16 v44, 0x0

    .line 375
    .local v44, isValidApplicationID:Z
    const/16 v43, 0x0

    .line 377
    .local v43, isSULPINITMessage:Z
    const/16 v24, 0x0

    .line 380
    .local v24, Delta_Index:I
    const-string v5, "application/vnd.omaloc-supl-init"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 381
    const/16 v43, 0x1

    .line 383
    aget-byte v5, p1, v40

    const/16 v6, 0x61

    if-ge v5, v6, :cond_17

    .line 384
    aget-byte v5, p1, v40

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v40, 0x1

    aget-byte v5, p1, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v40, 0x2

    aget-byte v5, p1, v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v40, 0x3

    aget-byte v5, p1, v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_3

    .line 386
    const/16 v45, 0x1

    .line 387
    const/16 v24, 0x4

    .line 405
    :cond_3
    :goto_2
    if-eqz v45, :cond_4

    add-int v5, v40, v24

    aget-byte v5, p1, v5

    const/16 v6, -0x51

    if-ne v5, v6, :cond_4

    .line 406
    add-int/lit8 v5, v40, -0x1

    aget-byte v5, p1, v5

    sub-int v31, v5, v24

    .line 407
    .local v31, d_Length:I
    add-int/lit8 v5, v40, -0x1

    aget-byte v35, p1, v5

    .line 408
    .local v35, h_Length:I
    const/16 v25, 0x19

    .line 410
    .local v25, Delta_index2:I
    const/4 v5, 0x3

    move/from16 v0, v31

    if-le v0, v5, :cond_18

    .line 411
    add-int v5, v40, v24

    add-int/lit8 v51, v5, 0x1

    .line 412
    .local v51, startIndex:I
    new-instance v26, Ljava/lang/String;

    const-string/jumbo v5, "x-oma-application:ulp.ua"

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 413
    .local v26, appID:Ljava/lang/String;
    new-instance v47, Ljava/lang/String;

    const/16 v5, 0x18

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-direct {v0, v1, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 415
    .local v47, pdu_app:Ljava/lang/String;
    if-eqz v47, :cond_4

    .line 418
    move-object/from16 v0, v26

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 419
    const/16 v44, 0x1

    .line 436
    .end local v25           #Delta_index2:I
    .end local v26           #appID:Ljava/lang/String;
    .end local v31           #d_Length:I
    .end local v35           #h_Length:I
    .end local v47           #pdu_app:Ljava/lang/String;
    .end local v51           #startIndex:I
    :cond_4
    :goto_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v34

    .line 437
    .local v34, edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    invoke-virtual/range {v34 .. v34}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v4

    .line 438
    .local v4, phoneResPol:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {v34 .. v34}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v5

    if-nez v5, :cond_19

    .line 441
    :cond_6
    const-string v5, "WAP PUSH"

    const-string v6, " MDM RoamingPush or WapPush Disabled "

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 243
    .end local v4           #phoneResPol:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v24           #Delta_Index:I
    .end local v34           #edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    .end local v43           #isSULPINITMessage:Z
    .end local v44           #isValidApplicationID:Z
    .end local v45           #isValidContentType:Z
    :sswitch_1
    const-string v11, "application/vnd.oma.drm.rights+wbxml"

    .line 244
    goto/16 :goto_1

    .line 246
    :sswitch_2
    const-string v11, "application/vnd.wap.sic"

    .line 247
    goto/16 :goto_1

    .line 249
    :sswitch_3
    const-string v11, "application/vnd.wap.slc"

    .line 250
    goto/16 :goto_1

    .line 252
    :sswitch_4
    const-string v11, "application/vnd.wap.coc"

    .line 253
    goto/16 :goto_1

    .line 255
    :sswitch_5
    const-string v11, "application/vnd.wap.mms-message"

    .line 256
    goto/16 :goto_1

    .line 258
    :sswitch_6
    const-string v11, "application/vnd.omaloc-supl-init"

    .line 259
    goto/16 :goto_1

    .line 261
    :sswitch_7
    const-string v11, "application/vnd.docomo.pf"

    .line 262
    goto/16 :goto_1

    .line 270
    :sswitch_8
    const-string v11, "application/vnd.syncml.notification"

    .line 271
    goto/16 :goto_1

    .line 276
    :sswitch_9
    const-string v11, "application/vnd.syncml.ds.notification"

    .line 277
    goto/16 :goto_1

    .line 280
    :sswitch_a
    const-string v11, "application/vnd.wap.connectivity-wbxml"

    .line 281
    goto/16 :goto_1

    .line 283
    :sswitch_b
    const-string v11, "application/vnd.syncml.dm+wbxml"

    .line 284
    goto/16 :goto_1

    .line 286
    :sswitch_c
    const-string v11, "application/vnd.syncml.dm+xml"

    .line 287
    goto/16 :goto_1

    .line 291
    :sswitch_d
    const-string v11, "application/vnd.wap.emn+wbxml"

    .line 292
    goto/16 :goto_1

    .line 304
    :sswitch_e
    const-string v11, "application/vnd.syncml+wbxml"

    .line 305
    goto/16 :goto_1

    .line 315
    :cond_7
    const-string v5, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    const/16 v12, 0x4a

    goto/16 :goto_1

    .line 317
    :cond_8
    const-string v5, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 318
    const/16 v12, 0x4b

    goto/16 :goto_1

    .line 319
    :cond_9
    const-string v5, "application/vnd.wap.sic"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 320
    const/16 v12, 0x2e

    goto/16 :goto_1

    .line 321
    :cond_a
    const-string v5, "application/vnd.wap.slc"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 322
    const/16 v12, 0x30

    goto/16 :goto_1

    .line 323
    :cond_b
    const-string v5, "application/vnd.wap.coc"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 324
    const/16 v12, 0x32

    goto/16 :goto_1

    .line 325
    :cond_c
    const-string v5, "application/vnd.wap.mms-message"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 326
    const/16 v12, 0x3e

    goto/16 :goto_1

    .line 327
    :cond_d
    const-string v5, "application/vnd.omaloc-supl-init"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 328
    const/16 v12, 0x312

    goto/16 :goto_1

    .line 329
    :cond_e
    const-string v5, "application/vnd.docomo.pf"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 330
    const/16 v12, 0x310

    goto/16 :goto_1

    .line 336
    :cond_f
    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 337
    const/16 v12, 0x44

    goto/16 :goto_1

    .line 338
    :cond_10
    const-string v5, "application/vnd.syncml.ds.notification"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 339
    const/16 v12, 0x4e

    goto/16 :goto_1

    .line 342
    :cond_11
    const-string v5, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 343
    const/16 v12, 0x36

    goto/16 :goto_1

    .line 344
    :cond_12
    const-string v5, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 345
    const/16 v12, 0x42

    goto/16 :goto_1

    .line 346
    :cond_13
    const-string v5, "application/vnd.syncml.dm+xml"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 347
    const/16 v12, 0x43

    goto/16 :goto_1

    .line 350
    :cond_14
    const-string v5, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 351
    const/16 v12, 0x30a

    goto/16 :goto_1

    .line 362
    :cond_15
    const-string v5, "application/vnd.syncml+wbxml"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 363
    const/16 v12, 0xb0

    goto/16 :goto_1

    .line 367
    :cond_16
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received PDU. Unknown Content-Type = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 391
    .restart local v24       #Delta_Index:I
    .restart local v43       #isSULPINITMessage:Z
    .restart local v44       #isValidApplicationID:Z
    .restart local v45       #isValidContentType:Z
    :cond_17
    const/16 v24, 0x21

    .line 392
    new-instance v23, Ljava/lang/String;

    const-string v5, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 393
    .local v23, CType:Ljava/lang/String;
    new-instance v46, Ljava/lang/String;

    const/16 v5, 0x20

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-direct {v0, v1, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 394
    .local v46, pdu_CType:Ljava/lang/String;
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content Type : pdu = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v15, p1, v40

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v15, v40, 0x1

    aget-byte v15, p1, v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v15, v40, 0x2

    aget-byte v15, p1, v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz v46, :cond_3

    .line 398
    move-object/from16 v0, v46

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 399
    const/16 v45, 0x1

    goto/16 :goto_2

    .line 425
    .end local v23           #CType:Ljava/lang/String;
    .end local v46           #pdu_CType:Ljava/lang/String;
    .restart local v25       #Delta_index2:I
    .restart local v31       #d_Length:I
    .restart local v35       #h_Length:I
    :cond_18
    add-int v5, v40, v24

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    const/16 v6, -0x70

    if-ne v5, v6, :cond_4

    .line 426
    const/16 v44, 0x1

    goto/16 :goto_3

    .line 444
    .end local v25           #Delta_index2:I
    .end local v31           #d_Length:I
    .end local v35           #h_Length:I
    .restart local v4       #phoneResPol:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v34       #edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    :cond_19
    const/16 v5, 0x3e

    if-ne v5, v12, :cond_1c

    .line 445
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 446
    :cond_1a
    const-string v5, "WAP PUSH"

    const-string v6, "emergency call only or incoming MMS not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 448
    :cond_1b
    invoke-virtual {v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 449
    const-string v5, "WAP PUSH"

    const-string v6, "blocking mms with storage"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    .end local v7           #transactionId:I
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    .end local v8           #pduType:I
    .end local v9           #headerStartIndex:I
    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 452
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 456
    .restart local v7       #transactionId:I
    .restart local v8       #pduType:I
    .restart local v9       #headerStartIndex:I
    :cond_1c
    const/16 v33, 0x0

    .line 457
    .local v33, dispatchedByApplication:Z
    sparse-switch v12, :sswitch_data_1

    .line 547
    :goto_4
    const/4 v5, 0x1

    move/from16 v0, v33

    if-ne v0, v5, :cond_1f

    .line 548
    const/4 v5, -0x1

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 459
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 460
    const/16 v33, 0x1

    .line 461
    goto :goto_4

    :sswitch_10
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 463
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 464
    const/16 v33, 0x1

    .line 465
    goto :goto_4

    .line 471
    :sswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    .line 472
    const/16 v33, 0x1

    .line 473
    goto :goto_4

    .line 483
    :sswitch_12
    const/16 v33, 0x0

    .line 484
    goto :goto_4

    .line 489
    :sswitch_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DSNoti([BI)V

    .line 491
    const/16 v33, 0x1

    goto :goto_4

    .line 493
    :cond_1d
    const/16 v33, 0x1

    .line 495
    goto :goto_4

    .line 502
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v5, v0, v9, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v37

    .line 503
    .local v37, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v5, 0x2f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 505
    .local v27, applicationIdObj:Ljava/lang/Object;
    const-wide/16 v13, 0x0

    .line 506
    .local v13, applicationId:J
    move-object/from16 v0, v27

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_1e

    .line 507
    check-cast v27, Ljava/lang/Long;

    .end local v27           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :cond_1e
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 509
    invoke-direct/range {v5 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I

    move-result v5

    goto/16 :goto_0

    .line 556
    .end local v13           #applicationId:J
    .end local v37           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_1f
    if-nez v33, :cond_21

    .line 557
    if-eqz v43, :cond_21

    .line 559
    const-string v5, "CMCC"

    const-string v6, "CU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    if-eqz v44, :cond_20

    if-nez v45, :cond_21

    .line 561
    :cond_20
    const/16 v22, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v11

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-direct/range {v15 .. v22}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CON013([BIILjava/lang/String;IIZ)V

    .line 562
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 569
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v38, v38, v5

    .line 571
    new-array v0, v10, [B

    move-object/from16 v36, v0

    .line 572
    .local v36, header:[B
    const/4 v5, 0x0

    move-object/from16 v0, v36

    array-length v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-static {v0, v9, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    if-eqz v11, :cond_24

    const-string v5, "application/vnd.wap.coc"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 577
    move-object/from16 v42, p1

    .line 590
    .local v42, intentData:[B
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    add-int v6, v38, v10

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v38

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 591
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v38, v0

    .line 592
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v52

    .line 594
    .local v52, wapAppId:Ljava/lang/String;
    if-nez v52, :cond_22

    .line 595
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v52

    .line 598
    :cond_22
    if-nez v11, :cond_25

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    .line 603
    .local v30, contentType:Ljava/lang/String;
    :goto_6
    const/16 v50, 0x1

    .line 604
    .local v50, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v53

    .line 606
    .local v53, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v53, :cond_26

    .line 624
    :cond_23
    :goto_7
    if-nez v50, :cond_27

    .line 625
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 579
    .end local v30           #contentType:Ljava/lang/String;
    .end local v42           #intentData:[B
    .end local v50           #processFurther:Z
    .end local v52           #wapAppId:Ljava/lang/String;
    .end local v53           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_24
    add-int v32, v9, v10

    .line 580
    .local v32, dataIndex:I
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v32

    new-array v0, v5, [B

    move-object/from16 v42, v0

    .line 581
    .restart local v42       #intentData:[B
    const/4 v5, 0x0

    move-object/from16 v0, v42

    array-length v6, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .end local v32           #dataIndex:I
    .restart local v52       #wapAppId:Ljava/lang/String;
    :cond_25
    move-object/from16 v30, v11

    .line 598
    goto :goto_6

    .line 609
    .restart local v30       #contentType:Ljava/lang/String;
    .restart local v50       #processFurther:Z
    .restart local v53       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_26
    :try_start_1
    new-instance v41, Landroid/content/Intent;

    invoke-direct/range {v41 .. v41}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v41, intent:Landroid/content/Intent;
    const-string/jumbo v5, "transactionId"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    const-string/jumbo v5, "pduType"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const-string v5, "header"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 613
    const-string v5, "data"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 614
    const-string v5, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 617
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    move-object/from16 v2, v30

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v49

    .line 619
    .local v49, procRet:I
    and-int/lit8 v5, v49, 0x1

    if-lez v5, :cond_23

    const v5, 0x8000

    and-int v5, v5, v49

    if-nez v5, :cond_23

    .line 621
    const/16 v50, 0x0

    goto :goto_7

    .line 627
    .end local v41           #intent:Landroid/content/Intent;
    .end local v49           #procRet:I
    .end local v53           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v5

    .line 633
    .end local v30           #contentType:Ljava/lang/String;
    .end local v50           #processFurther:Z
    .end local v52           #wapAppId:Ljava/lang/String;
    :cond_27
    if-nez v11, :cond_28

    .line 635
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 640
    :cond_28
    const-string v5, "application/vnd.wap.mms-message"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 641
    const-string v48, "android.permission.RECEIVE_MMS"

    .line 646
    .local v48, permission:Ljava/lang/String;
    :goto_8
    new-instance v41, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .restart local v41       #intent:Landroid/content/Intent;
    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string/jumbo v5, "transactionId"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string/jumbo v5, "pduType"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v5, "header"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 651
    const-string v5, "data"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 652
    const-string v5, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v5, :cond_29

    .line 655
    const-string/jumbo v5, "origaddr"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    :cond_29
    const-string/jumbo v5, "simSlot"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 662
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 643
    .end local v41           #intent:Landroid/content/Intent;
    .end local v48           #permission:Ljava/lang/String;
    :cond_2a
    const-string v48, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v48       #permission:Ljava/lang/String;
    goto :goto_8

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_a
        0x3e -> :sswitch_5
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x4e -> :sswitch_9
        0xb0 -> :sswitch_e
        0xce -> :sswitch_9
        0x30a -> :sswitch_d
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    .line 457
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_12
        0x32 -> :sswitch_f
        0x36 -> :sswitch_12
        0x3e -> :sswitch_10
        0x42 -> :sswitch_12
        0x43 -> :sswitch_12
        0x44 -> :sswitch_11
        0x4e -> :sswitch_13
        0xce -> :sswitch_13
        0x30a -> :sswitch_14
        0x310 -> :sswitch_14
    .end sparse-switch
.end method

.method public dispatchWapPushAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "OrigAddr"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWpaPushAddressTimeStamp(Ljava/lang/String;J)V
    .locals 1
    .parameter "wapPushAddress"
    .parameter "wapPushTimeStamp"

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    .line 946
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    .line 947
    return-void
.end method
