.class Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;
.super Ljava/lang/Object;
.source "CdmaLteUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimEprlLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, "EF_CSIM_EPRL"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "ar"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #calls: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$2500(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Landroid/os/AsyncResult;)V

    .line 245
    return-void
.end method
