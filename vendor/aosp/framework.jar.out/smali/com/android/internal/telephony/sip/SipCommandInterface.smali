.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 161
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 488
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 486
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "ackPdu"
    .parameter "result"

    .prologue
    .line 261
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 257
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 253
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 475
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 341
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 72
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 77
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 60
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 63
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 525
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 520
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPass"
    .parameter "newPass"
    .parameter "result"

    .prologue
    .line 84
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 148
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 240
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 458
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 226
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 223
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 100
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "callType"
    .parameter "result"

    .prologue
    .line 111
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 104
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "callType"
    .parameter "result"

    .prologue
    .line 114
    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "callType"
    .parameter "result"

    .prologue
    .line 108
    return-void
.end method

.method public dialConferenceCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 472
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 461
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 464
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "callType"
    .parameter "result"

    .prologue
    .line 468
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 450
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 167
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 294
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 315
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 417
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 271
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 409
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 441
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 397
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 91
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 97
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 192
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 414
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 400
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 124
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 127
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 118
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 121
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 45
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 170
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 177
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 174
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 183
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 378
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 291
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 195
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 482
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 479
    return-void
.end method

.method public getPinRemainingStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 67
    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 308
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 375
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 155
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 0
    .parameter "num_lock_type"
    .parameter "lock_type"
    .parameter "result"

    .prologue
    .line 455
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 186
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 384
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 501
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 491
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 531
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 189
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 369
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 131
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 142
    return-void
.end method

.method public hangupVT(ILandroid/os/Message;)V
    .locals 0
    .parameter "errCause"
    .parameter "result"

    .prologue
    .line 135
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 139
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 265
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 268
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .parameter "data"
    .parameter "response"

    .prologue
    .line 347
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 350
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 356
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 305
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 302
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 277
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 423
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 320
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 325
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 432
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 504
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 164
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 390
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 393
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 528
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 344
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 208
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 438
    return-void
.end method

.method public sendCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "result"

    .prologue
    .line 220
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 217
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 198
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 538
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 362
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 365
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 211
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "result"

    .prologue
    .line 214
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 359
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 338
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 158
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 353
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 274
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 298
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 281
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 447
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 444
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 426
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 429
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 330
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 335
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 406
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 403
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 381
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 180
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 284
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 288
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 42
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 420
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 312
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 372
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 152
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "result"

    .prologue
    .line 243
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 453
    return-void
.end method

.method public setSimPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "result"

    .prologue
    .line 246
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 387
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 249
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 435
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 237
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 201
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 204
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "passwd"
    .parameter "result"

    .prologue
    .line 87
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 48
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 54
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 512
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 495
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 51
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 57
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 516
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 508
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 80
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 145
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 498
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 232
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 229
    return-void
.end method
