.class Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/functions/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x503edeabb17c8517L


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "msg"
    .parameter "x"

    .prologue
    .line 646
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 647
    iput-object p2, p0, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    .line 648
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lorg/apache/xpath/functions/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method
