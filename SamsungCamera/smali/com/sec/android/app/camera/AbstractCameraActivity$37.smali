.class Lcom/sec/android/app/camera/AbstractCameraActivity$37;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->showDefaultLayoutPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$37;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$37;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$37;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2317
    :cond_0
    return-void
.end method
