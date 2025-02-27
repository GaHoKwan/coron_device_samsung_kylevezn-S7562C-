.class public final Lorg/apache/xml/serializer/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# static fields
.field private static m_formats:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/SerializerFactory;->m_formats:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;
    .locals 15
    .parameter "format"

    .prologue
    .line 96
    :try_start_0
    const-string v10, "method"

    invoke-virtual {p0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, method:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 99
    sget-object v10, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v11, "ER_FACTORY_PROPERTY_MISSING"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "method"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, msg:Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v4           #method:Ljava/lang/String;
    .end local v6           #msg:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v10, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 105
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #method:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v10, "{http://xml.apache.org/xalan}content-handler"

    invoke-virtual {p0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 112
    invoke-static {v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v5

    .line 114
    .local v5, methodDefaults:Ljava/util/Properties;
    const-string v10, "{http://xml.apache.org/xalan}content-handler"

    invoke-virtual {v5, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    sget-object v10, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v11, "ER_FACTORY_PROPERTY_MISSING"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "{http://xml.apache.org/xalan}content-handler"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .restart local v6       #msg:Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 127
    .end local v5           #methodDefaults:Ljava/util/Properties;
    .end local v6           #msg:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 129
    .local v3, loader:Ljava/lang/ClassLoader;
    const/4 v10, 0x1

    invoke-static {v0, v3, v10}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, cls:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 135
    .local v7, obj:Ljava/lang/Object;
    instance-of v10, v7, Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v10, :cond_2

    .line 138
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xml/serializer/Serializer;

    .line 139
    .local v8, ser:Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v8, p0}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    .line 183
    .end local v7           #obj:Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 147
    .end local v8           #ser:Lorg/apache/xml/serializer/Serializer;
    .restart local v7       #obj:Ljava/lang/Object;
    :cond_2
    instance-of v10, v7, Lorg/xml/sax/ContentHandler;

    if-eqz v10, :cond_3

    .line 156
    sget-object v0, Lorg/apache/xml/serializer/SerializerConstants;->DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

    .line 157
    const/4 v10, 0x1

    invoke-static {v0, v3, v10}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xml/serializer/SerializationHandler;

    .line 160
    .local v9, sh:Lorg/apache/xml/serializer/SerializationHandler;
    check-cast v7, Lorg/xml/sax/ContentHandler;

    .end local v7           #obj:Ljava/lang/Object;
    invoke-interface {v9, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 161
    invoke-interface {v9, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputFormat(Ljava/util/Properties;)V

    .line 163
    move-object v8, v9

    .line 164
    .restart local v8       #ser:Lorg/apache/xml/serializer/Serializer;
    goto :goto_0

    .line 169
    .end local v8           #ser:Lorg/apache/xml/serializer/Serializer;
    .end local v9           #sh:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v7       #obj:Ljava/lang/Object;
    :cond_3
    new-instance v10, Ljava/lang/Exception;

    sget-object v11, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v12, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-virtual {v11, v12, v13}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
