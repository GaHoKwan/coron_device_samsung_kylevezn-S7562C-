.class Lcom/android/server/location/GpsLocationProvider$3;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->checkUDPSuplInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 667
    :cond_0
    :goto_0
    const/16 v4, 0x5dc

    :try_start_0
    new-array v0, v4, [B

    .line 669
    .local v0, buf:[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v2, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 670
    .local v2, packet:Ljava/net/DatagramPacket;
    new-instance v4, Ljava/net/DatagramSocket;

    const/16 v5, 0x1c6b

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$3;->socket:Ljava/net/DatagramSocket;

    .line 675
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$3;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 677
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 679
    .local v3, supl_init:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 680
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V
    invoke-static {v4, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;[BI)V

    .line 682
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$3;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    .end local v0           #buf:[B
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .end local v3           #supl_init:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 684
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$3;->socket:Ljava/net/DatagramSocket;

    if-eqz v4, :cond_0

    .line 685
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$3;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0
.end method
