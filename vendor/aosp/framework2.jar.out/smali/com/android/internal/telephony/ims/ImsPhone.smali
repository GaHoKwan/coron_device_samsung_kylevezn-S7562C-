.class public Lcom/android/internal/telephony/ims/ImsPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "ImsPhone.java"


# static fields
.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DEBUG:Z = true

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x24

.field private static final IMS_PS_DOMAIN:Ljava/lang/String; = "persist.radio.domain.ps"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field public static final RESTART_ECM_TIMER:I


# instance fields
.field public mCT:Lcom/android/internal/telephony/CallTracker;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field public mPostDialHandler:Landroid/os/Registrant;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private state:Lcom/android/internal/telephony/Phone$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 2
    .parameter "context"
    .parameter "phone"
    .parameter "cm"
    .parameter "notifier"

    .prologue
    .line 81
    invoke-direct {p0, p4, p1, p3}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 64
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    .line 82
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mCT:Lcom/android/internal/telephony/CallTracker;

    .line 85
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 88
    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-interface {p3, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method private getCallType(Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Call$CallType;
    .locals 3
    .parameter "detail"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 129
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v0, v2, :cond_3

    .line 130
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    .line 145
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v0, v1, :cond_1

    .line 133
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 134
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v0, v2, :cond_5

    .line 135
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 138
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v0, v1, :cond_4

    .line 139
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 141
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 145
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0
.end method

.method private isPSDomain()Z
    .locals 2

    .prologue
    .line 375
    const-string v0, "persist.radio.domain.ps"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 824
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() is not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->acceptCall()V

    .line 157
    return-void
.end method

.method public acceptCall(I)V
    .locals 1
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->acceptCall()V

    .line 153
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 801
    const-string v0, "activateCellBroadcastSms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 174
    const-string v2, "ro.telephony.disable-call"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, disableCall:Ljava/lang/String;
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): disableCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): ringingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): foregndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): backgndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 693
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 701
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->clearDisconnected()V

    .line 289
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->conference()V

    .line 235
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with dialstring not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .parameter "callType"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v2, 0x3

    .line 206
    .local v2, domain:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Cannot dial IMS call in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isPSDomain()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const/4 v2, 0x2

    .line 214
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v1, p2, v2, p3}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 217
    .local v1, details:Lcom/android/internal/telephony/CallDetails;
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsPhone;->getCallType(Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 218
    .local v0, c:Lcom/android/internal/telephony/Connection;
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with uusinfo not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 731
    const-string v0, "disableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 2
    .parameter "causeCode"

    .prologue
    .line 417
    sparse-switch p1, :sswitch_data_0

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 439
    .local v0, serviceState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 440
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 447
    .end local v0           #serviceState:I
    :goto_0
    return-object v1

    .line 424
    :sswitch_0
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 426
    :sswitch_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 428
    :sswitch_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 430
    :sswitch_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 432
    :sswitch_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 434
    :sswitch_5
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 441
    .restart local v0       #serviceState:I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 443
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 444
    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    .line 445
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 447
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 417
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x11 -> :sswitch_5
        0x22 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2c -> :sswitch_0
        0x31 -> :sswitch_0
        0x3a -> :sswitch_0
        0x44 -> :sswitch_1
        0xf0 -> :sswitch_2
        0xf1 -> :sswitch_3
    .end sparse-switch
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 726
    const-string v0, "enableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public equals(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 125
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 115
    if-ne p1, p0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->explicitCallTransfer()V

    .line 247
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 634
    const-string v0, "getAvailableNetworks"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCSPavailable()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCSPavailable()Z

    move-result v0

    return v0
.end method

.method public getCSPtable()Lcom/android/internal/telephony/gsm/simCSPtable;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCSPtable()Lcom/android/internal/telephony/gsm/simCSPtable;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 668
    const-string v0, "getCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 612
    const-string v0, "getCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public getCallType(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .parameter "call"

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 162
    .local v0, callDetails:Lcom/android/internal/telephony/CallDetails;
    iget v1, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    return v1
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 345
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-void
.end method

.method public getCdmaCurrIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 806
    const-string v0, "getCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 459
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 469
    const-string v0, "getDataActivityState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 717
    const-string v0, "getDataCallList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 464
    const-string v0, "getDataConnectionState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 736
    const-string v0, "getDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    const-string v0, "getDeviceSvn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    const-string v0, "getEsn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getFDNavailable()Z

    move-result v0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ID"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 795
    const-string v0, "getIccPhoneBookInterfaceManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 796
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 789
    const-string v0, "getIccSmsInterfaceManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 790
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    const-string v0, "getImei"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    const-string v0, "getLine1AlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    const-string v0, "getLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    const-string v0, "getMeid"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 707
    const-string v0, "getNeighboringCids"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 334
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 335
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    const-string v0, "getPendingMmiCodes"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "IMS"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 783
    const-string v0, "getPhoneSubInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 784
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x5

    return v0
.end method

.method public getPostDialHandler()Landroid/os/Registrant;
    .locals 1

    .prologue
    .line 816
    const-string v0, "getPostDialHandler"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 817
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 654
    const-string v0, "getPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 474
    const-string v0, "getSignalStrength"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSponImsi()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 760
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    const-string v0, "getVoiceMailAlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    const-string v0, "getVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 564
    const-string v0, "handleInCallMmiCommands"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 96
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    array-length v2, v2

    if-lt v2, v6, :cond_2

    .line 98
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 99
    .local v1, responseArray:[I
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS registration state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    aget v2, v1, v5

    if-nez v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v6}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_0

    .line 102
    :cond_1
    aget v2, v1, v5

    if-ne v2, v6, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_0

    .line 105
    .end local v1           #responseArray:[I
    :cond_2
    const-string v2, "ImsPhone"

    const-string v3, "IMS State query failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 557
    const-string v0, "handlePinMmi"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 453
    const-string v0, "ImsPhone"

    const-string v1, "handleTimerInEmergencyCallbackMode, unsupported for this phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 410
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 254
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 285
    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 547
    const-string v0, "registerForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->rejectCall()V

    .line 167
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter "network"
    .parameter "response"

    .prologue
    .line 644
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "operatorNumeric"
    .parameter "operatorAlphaLong"
    .parameter "response"

    .prologue
    .line 649
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 316
    const/4 v0, 0x1

    .line 317
    .local v0, check:Z
    const/4 v1, 0x0

    .local v1, itr:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 319
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BurstDtmf invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x0

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneBase;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 329
    :cond_1
    return-void

    .line 317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 292
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendEncodedUssd([BII)V
    .locals 1
    .parameter "ussdMessage"
    .parameter "ussdLength"
    .parameter "dcsCode"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->sendEncodedUssd([BII)V

    .line 487
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "ussdMessge"

    .prologue
    .line 541
    const-string v0, "sendUssdResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 685
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 676
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 629
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 619
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 349
    const-string v0, "setCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 812
    const-string v0, "setCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 742
    const-string v0, "setDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 588
    const-string v0, "setLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 353
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setMute(Z)V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 639
    const-string v0, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 712
    const-string v0, "setOnPostDialCharacter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 340
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 341
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 1
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 661
    const-string v0, "setPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 570
    const-string v0, "setRadioPower"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    .line 392
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 606
    const-string v0, "setVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public setmMmiInitBySTK(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V

    .line 512
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 302
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->startDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->stopDtmf()V

    .line 312
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v0, "ImsPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->switchHoldingAndActive()V

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 552
    const-string v0, "unregisterForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method updatePhoneState()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    .line 263
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_0

    .line 272
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ^^^ new phone state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->notifyPhoneStateChanged()V

    .line 275
    :cond_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 268
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 722
    const-string v0, "updateServiceLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 723
    return-void
.end method
