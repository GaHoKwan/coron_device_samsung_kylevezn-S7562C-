.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SmsTracker"
.end annotation


# instance fields
.field public final mAppPackage:Ljava/lang/String;

.field public final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeliveryIntent:Landroid/app/PendingIntent;

.field public final mDestAddress:Ljava/lang/String;

.field public mMessageRef:I

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "appPackage"
    .parameter "destAddr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2892
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2893
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2894
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2895
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2896
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2897
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppPackage:Ljava/lang/String;

    .line 2898
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2899
    return-void
.end method


# virtual methods
.method protected isMultipart()Z
    .locals 2

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2907
    .local v0, map:Ljava/util/HashMap;
    const-string/jumbo v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
