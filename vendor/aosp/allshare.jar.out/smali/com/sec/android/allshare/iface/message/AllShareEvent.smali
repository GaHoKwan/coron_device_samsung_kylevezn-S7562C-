.class public Lcom/sec/android/allshare/iface/message/AllShareEvent;
.super Ljava/lang/Object;
.source "AllShareEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/iface/message/AllShareEvent$FileReceiverEvent;
    }
.end annotation


# static fields
.field public static final EVENT_AIRPLANE_MODE_OFF:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_AIRPLANE_MODE_OFF"

.field public static final EVENT_AIRPLANE_MODE_ON:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_AIRPLANE_MODE_ON"

.field public static final EVENT_AP_CHANGED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_AP_CHANGED"

.field public static final EVENT_AV_PLAYER_DISCOVERY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_AV_PLAYER_DISCOVERY"

.field public static final EVENT_BATTERY_CHANGED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_BATTERY_CHANGED"

.field public static final EVENT_BATTERY_LOW:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_BATTERY_LOW"

.field public static final EVENT_BATTERY_OKAY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_BATTERY_OKAY"

.field public static final EVENT_CALL_IDLE:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_CALL_IDLE"

.field public static final EVENT_CALL_OFFHOOK:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_CALL_OFFHOOK"

.field public static final EVENT_CALL_RINGING:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_CALL_RINGING"

.field public static final EVENT_CATEGORY_DEVICE:Ljava/lang/String; = "com.sec.android.allshare.event.DEVICE"

.field public static final EVENT_CATEGORY_GLOBAL:Ljava/lang/String; = "com.sec.android.allshare.event.GLOBAL"

.field public static final EVENT_DEVICE_SUBSCRIBE:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

.field public static final EVENT_DEVICE_UNSUBSCRIBE:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_DEVICE_UNSUBSCRIBE"

.field public static final EVENT_ETHERNET_CONNECTED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_ETHERNET_CONNECTED"

.field public static final EVENT_ETHERNET_DISCONNECTED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_ETHERNET_DISCONNECTED"

.field public static final EVENT_FILERECEIVER_DISCOVERY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_FILERECEIVER_DISCOVERY"

.field public static final EVENT_IMAGE_VIEWER_DISCOVERY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_IMAGE_VIEWER_DISCOVERY"

.field public static final EVENT_KIES_SYNC_SERVER_DISCOVERY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_KIES_SYNC_SERVER_DISCOVERY"

.field public static final EVENT_MAIN_TV_AGENT:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_MAIN_TV_AGENT"

.field public static final EVENT_PARAMETER_KEY1:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_PARAMETER_KEY1"

.field private static final EVENT_PREFIX:Ljava/lang/String; = "com.sec.android.allshare.event."

.field public static final EVENT_PROVIDER_CONTENTS_UPDATED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_PROVIDER_CONTENTS_UPDATED"

.field public static final EVENT_PROVIDER_DISCOVERY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_PROVIDER_DISCOVERY"

.field public static final EVENT_RECEIVER_COMPLETED_BY_ITEM:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RECEIVER_COMPLETED_BY_ITEM"

.field public static final EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM"

.field public static final EVENT_RELAY_ERROR:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RELAY_ERROR"

.field public static final EVENT_RENDERER_STATE_BUFFERING:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RENDERER_STATE_BUFFERING"

.field public static final EVENT_RENDERER_STATE_CONTENT_CHANGED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RENDERER_STATE_CONTENT_CHANGED"

.field public static final EVENT_RENDERER_STATE_NOMEDIA:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RENDERER_STATE_NOMEDIA"

.field public static final EVENT_RENDERER_STATE_PAUSED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PAUSED"

.field public static final EVENT_RENDERER_STATE_PLAYING:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PLAYING"

.field public static final EVENT_RENDERER_STATE_STOPPED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_RENDERER_STATE_STOPPED"

.field public static final EVENT_SCREEN_OFF:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_SCREEN_OFF"

.field public static final EVENT_SCREEN_ON:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_SCREEN_ON"

.field public static final EVENT_SMARTCONTROL_DISCOVERY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_SMARTCONTROL_DISCOVERY"

.field public static final EVENT_TYPE_TV:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_TYPE_TV"

.field public static final EVENT_UPNP_DISCOVERY:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_UPNP_DISCOVERY"

.field public static final EVENT_USER_PRESENT:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_USER_PRESENT"

.field public static final EVENT_WIFI_DISABLED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_WIFI_DISABLED"

.field public static final EVENT_WIFI_ENABLED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_WIFI_ENABLED"

.field public static final EVENT_WIFI_P2P_CONNECTED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_WIFI_P2P_ENABLED"

.field public static final EVENT_WIFI_P2P_DISCONNECTED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_WIFI_P2P_DISABLED"

.field public static final EVENT_WIFI_UNKNOWN:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_WIFI_UNKNOWN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method
