.class Ljava/net/URLClassLoader$IndexFile;
.super Ljava/lang/Object;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexFile"
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Ljava/net/URLClassLoader$IndexFile;->map:Ljava/util/HashMap;

    .line 138
    return-void
.end method

.method private static getParentURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 124
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/JarURLConnection;

    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v1

    .line 125
    .local v1, fileURL:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, file:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, parentFile:Ljava/lang/String;
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 128
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_0

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    .local v3, parentURL:Ljava/net/URL;
    return-object v3
.end method

.method static readIndexFile(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/net/URL;)Ljava/net/URLClassLoader$IndexFile;
    .locals 12
    .parameter "jf"
    .parameter "indexEntry"
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, in:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 76
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2}, Ljava/net/URLClassLoader$IndexFile;->getParentURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, parentURLString:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "jar:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, prefix:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 79
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v2, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    .end local v0           #in:Ljava/io/BufferedReader;
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v7, pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    if-nez v10, :cond_0

    .line 117
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    .line 120
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .end local v8           #prefix:Ljava/lang/String;
    .restart local v0       #in:Ljava/io/BufferedReader;
    :goto_0
    return-object v9

    .line 83
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v7       #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    if-nez v10, :cond_2

    .line 117
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 96
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .local v3, jar:Ljava/net/URL;
    .local v4, line:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 86
    .end local v3           #jar:Ljava/net/URL;
    .end local v4           #line:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4       #line:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 109
    :goto_1
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 110
    new-instance v10, Ljava/net/URLClassLoader$IndexFile;

    invoke-direct {v10, v7}, Ljava/net/URLClassLoader$IndexFile;-><init>(Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    goto :goto_0

    .line 90
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    new-instance v3, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v3       #jar:Ljava/net/URL;
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 93
    if-nez v4, :cond_1

    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 101
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 106
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :goto_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 112
    .end local v3           #jar:Ljava/net/URL;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    :catch_0
    move-exception v10

    move-object v0, v1

    .line 117
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    .restart local v0       #in:Ljava/io/BufferedReader;
    :goto_4
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 103
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v3       #jar:Ljava/net/URL;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v7       #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 114
    .end local v3           #jar:Ljava/net/URL;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    :catch_1
    move-exception v10

    move-object v0, v1

    .line 117
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    .restart local v0       #in:Ljava/io/BufferedReader;
    :goto_5
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 117
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v7       #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    .line 119
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 117
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v7           #pre_map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .end local v8           #prefix:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_6
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .line 117
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v6       #parentURLString:Ljava/lang/String;
    .restart local v8       #prefix:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_6

    .line 114
    .end local v6           #parentURLString:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_5

    .line 112
    :catch_3
    move-exception v10

    goto :goto_4
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Ljava/net/URLClassLoader$IndexFile;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
