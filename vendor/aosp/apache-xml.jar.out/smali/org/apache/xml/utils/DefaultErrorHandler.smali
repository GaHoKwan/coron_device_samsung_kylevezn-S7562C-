.class public Lorg/apache/xml/utils/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Ljavax/xml/transform/ErrorListener;
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field m_pw:Ljava/io/PrintWriter;

.field m_throwExceptionOnError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .parameter "pw"

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 66
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "pw"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 58
    iput-object p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "throwExceptionOnError"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 83
    iput-boolean p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 84
    return-void
.end method

.method public static ensureLocationSet(Ljavax/xml/transform/TransformerException;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, locator:Ljavax/xml/transform/SourceLocator;
    move-object v0, p0

    .line 287
    .local v0, cause:Ljava/lang/Throwable;
    :cond_0
    instance-of v3, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_2

    .line 289
    new-instance v2, Lorg/apache/xml/utils/SAXSourceLocator;

    .end local v2           #locator:Ljavax/xml/transform/SourceLocator;
    move-object v3, v0

    check-cast v3, Lorg/xml/sax/SAXParseException;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    .line 298
    .restart local v2       #locator:Ljavax/xml/transform/SourceLocator;
    :cond_1
    :goto_0
    instance-of v3, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_3

    .line 299
    check-cast v0, Ljavax/xml/transform/TransformerException;

    .end local v0           #cause:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 305
    .restart local v0       #cause:Ljava/lang/Throwable;
    :goto_1
    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0, v2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 308
    return-void

    .line 291
    :cond_2
    instance-of v3, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 293
    check-cast v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    .line 294
    .local v1, causeLocator:Ljavax/xml/transform/SourceLocator;
    if-eqz v1, :cond_1

    .line 295
    move-object v2, v1

    goto :goto_0

    .line 300
    .end local v1           #causeLocator:Ljavax/xml/transform/SourceLocator;
    :cond_3
    instance-of v3, v0, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_4

    .line 301
    check-cast v0, Lorg/xml/sax/SAXException;

    .end local v0           #cause:Ljava/lang/Throwable;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .restart local v0       #cause:Ljava/lang/Throwable;
    goto :goto_1

    .line 303
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static printLocation(Ljava/io/PrintStream;Ljavax/xml/transform/TransformerException;)V
    .locals 1
    .parameter "pw"
    .parameter "exception"

    .prologue
    .line 312
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public static printLocation(Ljava/io/PrintStream;Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .parameter "pw"
    .parameter "exception"

    .prologue
    .line 317
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 318
    return-void
.end method

.method public static printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "pw"
    .parameter "exception"

    .prologue
    const/4 v6, 0x0

    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, locator:Ljavax/xml/transform/SourceLocator;
    move-object v0, p1

    .line 328
    .local v0, cause:Ljava/lang/Throwable;
    :cond_0
    instance-of v4, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v4, :cond_2

    .line 330
    new-instance v3, Lorg/apache/xml/utils/SAXSourceLocator;

    .end local v3           #locator:Ljavax/xml/transform/SourceLocator;
    move-object v4, v0

    check-cast v4, Lorg/xml/sax/SAXParseException;

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    .line 338
    .restart local v3       #locator:Ljavax/xml/transform/SourceLocator;
    :cond_1
    :goto_0
    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v4, :cond_3

    .line 339
    check-cast v0, Ljavax/xml/transform/TransformerException;

    .end local v0           #cause:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 347
    .restart local v0       #cause:Ljava/lang/Throwable;
    :goto_1
    if-nez v0, :cond_0

    .line 349
    if-eqz v3, :cond_8

    .line 352
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, id:Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "line"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "column"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    .end local v2           #id:Ljava/lang/String;
    :goto_3
    return-void

    .line 332
    :cond_2
    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 334
    check-cast v4, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    .line 335
    .local v1, causeLocator:Ljavax/xml/transform/SourceLocator;
    if-eqz v1, :cond_1

    .line 336
    move-object v3, v1

    goto :goto_0

    .line 340
    .end local v1           #causeLocator:Ljavax/xml/transform/SourceLocator;
    :cond_3
    instance-of v4, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v4, :cond_4

    .line 341
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .restart local v0       #cause:Ljava/lang/Throwable;
    goto :goto_1

    .line 342
    :cond_4
    instance-of v4, v0, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_5

    .line 343
    check-cast v0, Lorg/xml/sax/SAXException;

    .end local v0           #cause:Ljava/lang/Throwable;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .restart local v0       #cause:Ljava/lang/Throwable;
    goto :goto_1

    .line 345
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 352
    :cond_6
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v4, "ER_SYSTEMID_UNKNOWN"

    invoke-static {v4, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 361
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ER_LOCATION_UNKNOWN"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 232
    iget-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-eqz v1, :cond_0

    .line 233
    throw p1

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 238
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 239
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 151
    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 267
    iget-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-eqz v1, :cond_0

    .line 268
    throw p1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 273
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 178
    throw p1
.end method

.method public getErrorWriter()Ljava/io/PrintWriter;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 202
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 121
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return-void
.end method
