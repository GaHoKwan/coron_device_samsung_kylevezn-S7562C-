.class Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CameraSharingDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    .line 65
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 66
    iput-object p4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;->items:Ljava/util/ArrayList;

    .line 67
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    move-object v4, p2

    .line 72
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 73
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 75
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 77
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;

    .line 79
    .local v2, p:Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;
    if-eqz v2, :cond_3

    .line 80
    const v6, 0x7f0b0026

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    .local v1, iv:Landroid/widget/ImageView;
    const v6, 0x7f0b0027

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, tv:Landroid/widget/TextView;
    const v6, 0x7f0b0028

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 83
    .local v0, cb:Landroid/widget/CheckBox;
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->getDeviceImage()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 85
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->getDeviceImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 91
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->getDeviceCheck()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 98
    new-instance v6, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter$1;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;ILandroid/widget/CheckBox;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_3
    return-object v4

    .line 87
    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v1       #iv:Landroid/widget/ImageView;
    .restart local v3       #tv:Landroid/widget/TextView;
    :cond_4
    const v6, 0x7f020206

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :cond_5
    const v6, 0x7f090136

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
