.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    }
.end annotation


# static fields
.field private static final DELIMITER_ETX:I = 0x3

.field private static final DELIMITER_GS:I = 0x1d

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static bIsCMAS:Z

.field private static final connectText:[C

.field private static final dataText:[C

.field private static final lguText:[C

.field private static final pagingText:[C

.field private static final thirdPartyText:[C

.field private static final voiceMailText:[C

.field private static final webText:[C


# instance fields
.field protected callbackNumber:Ljava/lang/String;

.field public cmasAddress:Ljava/lang/String;

.field protected emailBody:Ljava/lang/String;

.field protected emailFrom:Ljava/lang/String;

.field protected indexOnIcc:I

.field protected isEmail:Z

.field protected isMwi:Z

.field protected linkUrl:Ljava/lang/String;

.field protected mPdu:[B

.field protected mSharedAppID:Ljava/lang/String;

.field protected mSharedCmd:Ljava/lang/String;

.field protected mSharedPayLoad:Ljava/lang/String;

.field protected mSimSlot:I

.field protected messageBody:Ljava/lang/String;

.field public messageRef:I

.field protected mti:I

.field protected mwiDontStore:Z

.field protected mwiSense:Z

.field protected originatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected pseudoSubject:Ljava/lang/String;

.field protected recipientAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected replyAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected scAddress:Ljava/lang/String;

.field protected scTimeMillis:J

.field protected sessionId:I

.field protected sessionSeq:I

.field protected sessionSeqEos:I

.field protected statusOnIcc:I

.field protected teleserviceId:I

.field protected userData:[B

.field protected userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 615
    const/16 v0, 0x22

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->voiceMailText:[C

    .line 620
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->pagingText:[C

    .line 622
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->thirdPartyText:[C

    .line 624
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->webText:[C

    .line 626
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->dataText:[C

    .line 629
    new-array v0, v1, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->lguText:[C

    .line 631
    new-array v0, v1, [C

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->connectText:[C

    return-void

    .line 615
    nop

    :array_0
    .array-data 0x2
        0xc8t 0xc0t
        0x5ct 0xb8t
        0xb4t 0xc6t
        0x20t 0x0t
        0x4ct 0xc7t
        0x31t 0xc1t
        0x54t 0xbat
        0x7ct 0xc7t
        0x74t 0xc7t
        0x20t 0x0t
        0xc4t 0xb3t
        0x29t 0xcct
        0x88t 0xd5t
        0xb5t 0xc2t
        0xc8t 0xb2t
        0xe4t 0xb2t
        0x2et 0x0t
        0xb5t 0xd1t
        0x54t 0xd6t
        0xa4t 0xd0t
        0x7ct 0xb9t
        0x20t 0x0t
        0x4t 0xb2t
        0x74t 0xb9t
        0x74t 0xbat
        0x20t 0x0t
        0x90t 0xc7t
        0xd9t 0xb3t
        0xf0t 0xc5t
        0xb0t 0xact
        0x29t 0xb4t
        0xc8t 0xb2t
        0xe4t 0xb2t
        0x2et 0x0t
    .end array-data

    .line 620
    :array_1
    .array-data 0x2
        0x5bt 0x0t
        0x38t 0xd6t
        0x9ct 0xcdt
        0x54t 0xbat
        0xdct 0xc2t
        0xc0t 0xc9t
        0x5dt 0x0t
    .end array-data

    .line 622
    nop

    :array_2
    .array-data 0x2
        0x5bt 0x0t
        0x78t 0xc6t
        0x80t 0xbdt
        0xact 0xc0t
        0xc5t 0xc5t
        0x90t 0xc7t
        0x20t 0x0t
        0xf0t 0xc5t
        0xb0t 0xact
        0x5dt 0x0t
    .end array-data

    .line 624
    :array_3
    .array-data 0x2
        0x5bt 0x0t
        0xf9t 0xc6t
        0x1ct 0xc1t
        0x51t 0xd5t
        0x20t 0x0t
        0xf0t 0xc5t
        0xb0t 0xact
        0x5dt 0x0t
    .end array-data

    .line 626
    :array_4
    .array-data 0x2
        0x5bt 0x0t
        0x4ct 0x0t
        0x47t 0x0t
        0x20t 0x0t
        0x55t 0x0t
        0x2bt 0x0t
        0x20t 0x0t
        0x34t 0xbbt
        0x20t 0xc1t
        0x78t 0xc7t
        0x30t 0xd1t
        0x37t 0xb1t
        0x5dt 0x0t
    .end array-data

    .line 629
    nop

    :array_5
    .array-data 0x2
        0x5bt 0x0t
        0x4ct 0x0t
        0x47t 0x0t
        0x20t 0x0t
        0x55t 0x0t
        0x2bt 0x0t
        0x20t 0x0t
        0x48t 0xc5t
        0xb4t 0xb0t
        0x5dt 0x0t
    .end array-data

    .line 631
    :array_6
    .array-data 0x2
        0xf0t 0xc5t
        0xb0t 0xact
        0x20t 0x0t
        0x58t 0xd5t
        0xdct 0xc2t
        0xa0t 0xact
        0xb5t 0xc2t
        0xc8t 0xb2t
        0x4ct 0xaet
        0x3ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 109
    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 117
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->linkUrl:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedAppID:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedCmd:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    .line 200
    return-void
.end method

.method private parseLGTSharingNoti()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 705
    const-string v0, ""

    .line 706
    .local v0, destBody:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const/16 v6, 0x1d

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 709
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, token:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 712
    move-object v0, v3

    .line 708
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    :cond_1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 714
    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedAppID:Ljava/lang/String;

    goto :goto_1

    .line 715
    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 716
    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedCmd:Ljava/lang/String;

    goto :goto_1

    .line 717
    :cond_3
    if-ne v1, v7, :cond_0

    .line 718
    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    .line 719
    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 720
    .local v2, index:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 721
    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    goto :goto_1

    .line 725
    .end local v2           #index:I
    .end local v3           #token:Ljava/lang/String;
    :cond_4
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 726
    return-void
.end method

.method private parseLGTWebNWapNoti(I)V
    .locals 6
    .parameter "tid"

    .prologue
    const/4 v5, -0x1

    .line 665
    const-string v0, ""

    .line 667
    .local v0, destBody:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 668
    .local v2, gs:I
    if-eq v2, v5, :cond_2

    .line 669
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 670
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 671
    .local v1, etx:I
    if-ne v1, v5, :cond_0

    .line 672
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 674
    :cond_0
    if-eq v1, v5, :cond_1

    if-gt v2, v1, :cond_1

    .line 675
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->linkUrl:Ljava/lang/String;

    .line 684
    .end local v1           #etx:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 702
    :goto_1
    return-void

    .line 677
    .restart local v1       #etx:I
    :cond_1
    const-string v3, "SMS"

    const-string/jumbo v4, "parseLGTWapUrlNoti parsing error...  DELIMITER_ETX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    .end local v1           #etx:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 681
    const-string v3, "SMS"

    const-string/jumbo v4, "parseLGTWapUrlNoti parsing error...  DELIMITER_GS"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->thirdPartyText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->connectText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_1

    .line 690
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->dataText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_1

    .line 693
    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->lguText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 697
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->webText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->connectText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_1
        0xc010 -> :sswitch_2
        0xc263 -> :sswitch_0
        0xc265 -> :sswitch_3
        0xc267 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 12

    .prologue
    const/16 v11, 0x40

    const/16 v10, 0x2e

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 554
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v7, "( /)|( )"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    if-ge v6, v9, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 562
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 563
    .local v4, len:I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 564
    .local v0, firstAt:I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 565
    .local v2, lastAt:I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 566
    .local v1, firstDot:I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 568
    .local v3, lastDot:I
    if-lez v0, :cond_0

    if-ne v0, v2, :cond_0

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v1, :cond_0

    if-gt v1, v3, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_0

    .line 569
    aget-object v6, v5, v8

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 570
    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    goto :goto_0
.end method

.method public getCMASAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmasAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    const-string v0, "Telephony/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallbackNUmber() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->callbackNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->callbackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 341
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
.end method

.method public abstract getMessageIdentifier()I
.end method

.method public abstract getMessagePriority()I
.end method

.method public getMessageType()I
    .locals 3

    .prologue
    .line 329
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    return v0
.end method

.method public getOriginalOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 288
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReplyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->sessionId:I

    return v0
.end method

.method public getSessionSeq()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->sessionSeq:I

    return v0
.end method

.method public getSessionSeqEos()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->sessionSeqEos:I

    return v0
.end method

.method public getSharedAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedAppID:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedPayLoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIdentifier()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSimSlot:I

    return v0
.end method

.method protected getSimSlot()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSimSlot:I

    return v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    return v0
.end method

.method public getTeleserviceId()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->teleserviceId:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public getlinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->isAlphanumeric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 532
    :cond_0
    return-void
.end method

.method protected parseSpecificTid(I)V
    .locals 2
    .parameter "tid"

    .prologue
    .line 637
    sparse-switch p1, :sswitch_data_0

    .line 662
    :goto_0
    return-void

    .line 639
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 640
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsMessageBase;->pagingText:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_0

    .line 642
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SmsMessageBase;->pagingText:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_0

    .line 646
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/SmsMessageBase;->voiceMailText:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_0

    .line 654
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->parseLGTWebNWapNoti(I)V

    goto :goto_0

    .line 657
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;->parseLGTSharingNoti()V

    goto :goto_0

    .line 637
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_1
        0xc00a -> :sswitch_3
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_2
        0xc010 -> :sswitch_2
        0xc263 -> :sswitch_2
        0xc265 -> :sswitch_2
        0xc267 -> :sswitch_2
        0x40000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCMASAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmasAddress:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setSimIdentifier(I)V
    .locals 0
    .parameter "simSlot"

    .prologue
    .line 372
    iput p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSimSlot:I

    .line 373
    return-void
.end method
