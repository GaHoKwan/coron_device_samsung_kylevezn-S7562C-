.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 303
    return-void
.end method
