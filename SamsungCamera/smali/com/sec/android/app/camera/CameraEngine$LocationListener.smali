.class Lcom/sec/android/app/camera/CameraEngine$LocationListener;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mEngine:Lcom/sec/android/app/camera/CameraEngine;

.field mLastLocation:Landroid/location/Location;

.field mValidOfGPS:I

.field mValidOfNetwork:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 1
    .parameter
    .parameter "provider"
    .parameter "engine"

    .prologue
    const/4 v0, 0x1

    .line 2729
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2726
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2727
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    .line 2730
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 2731
    iput-object p3, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 2732
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2816
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-ne v3, v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .parameter "newLocation"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    .line 2735
    const-string v1, "CameraEngine"

    const-string v2, "onLocationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double v1, v1, v4

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v1, :cond_2

    .line 2766
    :cond_1
    :goto_0
    return-void

    .line 2744
    :cond_2
    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2745
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2749
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->updateGPSIndicator()V

    .line 2750
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2752
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 2753
    new-array v0, v3, [D

    .line 2755
    .local v0, location:[D
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2756
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    aput-wide v1, v0, v6

    .line 2758
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-nez v1, :cond_4

    .line 2759
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    new-instance v2, Lcom/sec/android/app/camera/ReverseGeocoder;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    .line 2762
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-eqz v1, :cond_1

    .line 2763
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/ReverseGeocoder;->execute([D)V

    goto :goto_0

    .line 2746
    .end local v0           #location:[D
    :cond_5
    const-string v1, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2747
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x1

    .line 2772
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2773
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2774
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2784
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2782
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 2769
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 2787
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged - status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - provider["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 2798
    :goto_0
    return-void

    .line 2791
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2792
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2794
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2795
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    .line 2797
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->updateGPSIndicator()V

    goto :goto_0
.end method

.method public updateGPSIndicator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2801
    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-ne v2, v6, :cond_1

    move v2, v3

    :goto_0
    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-ne v5, v6, :cond_2

    move v5, v3

    :goto_1
    or-int v0, v2, v5

    .line 2802
    .local v0, connected:Z
    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-nez v5, :cond_4

    move v5, v3

    :goto_3
    and-int v1, v2, v5

    .line 2804
    .local v1, disconnected:Z
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2805
    if-eqz v1, :cond_5

    .line 2806
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setConnectingStateGPS(I)V

    .line 2813
    :cond_0
    :goto_4
    return-void

    .end local v0           #connected:Z
    .end local v1           #disconnected:Z
    :cond_1
    move v2, v4

    .line 2801
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    .restart local v0       #connected:Z
    :cond_3
    move v2, v4

    .line 2802
    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_3

    .line 2807
    .restart local v1       #disconnected:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 2808
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setConnectingStateGPS(I)V

    goto :goto_4

    .line 2810
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setConnectingStateGPS(I)V

    goto :goto_4
.end method
