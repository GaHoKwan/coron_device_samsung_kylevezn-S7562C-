.class public Ljava/sql/SQLTransientConnectionException;
.super Ljava/sql/SQLTransientException;
.source "SQLTransientConnectionException.java"


# static fields
.field private static final serialVersionUID:J = -0x22f9641fa3ae87e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/sql/SQLTransientException;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "sqlState"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "reason"
    .parameter "sqlState"
    .parameter "vendorCode"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .parameter "reason"
    .parameter "sqlState"
    .parameter "vendorCode"
    .parameter "cause"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "reason"
    .parameter "sqlState"
    .parameter "cause"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "reason"
    .parameter "cause"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method
