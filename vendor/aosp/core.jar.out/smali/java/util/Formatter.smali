.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatToken;,
        Ljava/util/Formatter$CachedDecimalFormat;,
        Ljava/util/Formatter$BigDecimalLayoutForm;
    }
.end annotation


# static fields
.field private static final ZEROS:[C

.field private static final cachedDecimalFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Formatter$CachedDecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arg:Ljava/lang/Object;

.field private closed:Z

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private localeData:Llibcore/icu/LocaleData;

.field private out:Ljava/lang/Appendable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 527
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Formatter;->ZEROS:[C

    .line 581
    new-instance v0, Ljava/util/Formatter$1;

    invoke-direct {v0}, Ljava/util/Formatter$1;-><init>()V

    sput-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    return-void

    .line 527
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 606
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 752
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;)V

    .line 753
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 779
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .parameter "file"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Formatter;->closed:Z

    .line 804
    const/4 v1, 0x0

    .line 806
    .local v1, fout:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 807
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 816
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 817
    return-void

    .line 808
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 810
    throw v0

    .line 811
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 812
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 813
    throw v0

    .line 811
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 808
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"

    .prologue
    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 831
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 832
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 833
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "os"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 851
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .parameter "os"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 868
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 869
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 870
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "ps"

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 886
    if-nez p1, :cond_0

    .line 887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 889
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 890
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 891
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 620
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 621
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1
    .parameter "a"
    .parameter "l"

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 650
    if-nez p1, :cond_0

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 655
    :goto_0
    iput-object p2, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 656
    return-void

    .line 653
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 677
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;)V

    .line 679
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .parameter "fileName"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 731
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 635
    return-void
.end method

.method private appendLocalized(Ljava/lang/StringBuilder;JI)V
    .locals 6
    .parameter "result"
    .parameter "value"
    .parameter "width"

    .prologue
    const/16 v5, 0x30

    .line 1976
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1977
    .local v1, paddingIndex:I
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v3, v4, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 1978
    .local v3, zeroDigit:C
    if-ne v3, v5, :cond_1

    .line 1979
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1983
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v2, p4, v4

    .line 1984
    .local v2, zeroCount:I
    if-gtz v2, :cond_2

    .line 1994
    :cond_0
    :goto_1
    return-void

    .line 1981
    .end local v2           #zeroCount:I
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1987
    .restart local v2       #zeroCount:I
    :cond_2
    if-ne v3, v5, :cond_3

    .line 1988
    sget-object v4, Ljava/util/Formatter;->ZEROS:[C

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5, v2}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1990
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1991
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z
    .locals 10
    .parameter "result"
    .parameter "conversion"
    .parameter "calendar"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    .line 1835
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 1968
    :goto_0
    return v4

    .line 1837
    :pswitch_1
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1840
    :pswitch_2
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1843
    :pswitch_3
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1846
    :pswitch_4
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1849
    :pswitch_5
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto :goto_0

    .line 1852
    :pswitch_6
    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1853
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1854
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1855
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1856
    const/16 v5, 0x79

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_0

    .line 1859
    :pswitch_7
    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1860
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1861
    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1862
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1863
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_0

    .line 1866
    :pswitch_8
    const/16 v5, 0xb

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1869
    :pswitch_9
    const/16 v5, 0xa

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1872
    :pswitch_a
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x3

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1875
    :pswitch_b
    const/16 v5, 0xc

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1878
    :pswitch_c
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    const/16 v7, 0x9

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1881
    :pswitch_d
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1884
    :pswitch_e
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1885
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1886
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    .line 1889
    :pswitch_f
    const/16 v5, 0xd

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1892
    :pswitch_10
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1893
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1894
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1895
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    .line 1899
    :pswitch_11
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x4

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1902
    :pswitch_12
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1903
    .local v3, timeZone:Ljava/util/TimeZone;
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    iget-object v7, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v6, v5, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1907
    .end local v3           #timeZone:Ljava/util/TimeZone;
    :pswitch_13
    const/16 v5, 0x61

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1908
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1909
    const/16 v5, 0x62

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1910
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1911
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1912
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1913
    const/16 v5, 0x54

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1914
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1915
    const/16 v5, 0x5a

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1916
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1917
    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    .line 1920
    :pswitch_14
    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1923
    :pswitch_15
    const/4 v6, 0x5

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1926
    :pswitch_16
    const/4 v5, 0x6

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x3

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1929
    :pswitch_17
    const/16 v6, 0xb

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1932
    :pswitch_18
    const/16 v6, 0xa

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1936
    :pswitch_19
    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1939
    :pswitch_1a
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1942
    :pswitch_1b
    const/16 v5, 0x49

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1943
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1944
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1945
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1946
    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1947
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1948
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1951
    :pswitch_1c
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1954
    :pswitch_1d
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1957
    :pswitch_1e
    const/16 v5, 0xf

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v0, v5

    .line 1958
    .local v0, offset:J
    const/16 v2, 0x2b

    .line 1959
    .local v2, sign:C
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 1960
    const/16 v2, 0x2d

    .line 1961
    neg-long v0, v0

    .line 1963
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1964
    const-wide/32 v5, 0x36ee80

    div-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    .line 1965
    const-wide/32 v5, 0x36ee80

    rem-long v5, v0, v5

    const-wide/32 v7, 0xea60

    div-long/2addr v5, v7

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1835
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method private badArgumentType()Ljava/util/IllegalFormatConversionException;
    .locals 3

    .prologue
    .line 1487
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private checkNotClosed()V
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-eqz v0, :cond_0

    .line 895
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    .line 897
    :cond_0
    return-void
.end method

.method private varargs doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 21
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1048
    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 1050
    new-instance v7, Ljava/util/Formatter$FormatSpecifierParser;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v7, fsp:Ljava/util/Formatter$FormatSpecifierParser;
    const/4 v11, 0x0

    .line 1052
    .local v11, currentObjectIndex:I
    const/4 v14, 0x0

    .line 1053
    .local v14, lastArgument:Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1055
    .local v9, hasLastArgumentSet:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1056
    .local v15, length:I
    const/4 v13, 0x0

    .local v13, i:I
    move-object v8, v14

    move v12, v11

    .line 1057
    .end local v11           #currentObjectIndex:I
    .end local v14           #lastArgument:Ljava/lang/Object;
    .local v12, currentObjectIndex:I
    :goto_0
    if-ge v13, v15, :cond_4

    .line 1059
    move/from16 v18, v13

    .line 1060
    .local v18, plainTextStart:I
    const/16 v4, 0x25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1061
    .local v16, nextPercent:I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    move/from16 v17, v15

    .line 1063
    .local v17, plainTextEnd:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 1064
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1066
    :cond_0
    move/from16 v13, v17

    .line 1068
    if-ge v13, v15, :cond_6

    .line 1069
    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Formatter$FormatSpecifierParser;->parseFormatToken(I)Ljava/util/Formatter$FormatToken;

    move-result-object v20

    .line 1071
    .local v20, token:Ljava/util/Formatter$FormatToken;
    const/4 v10, 0x0

    .line 1072
    .local v10, argument:Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->requireArgument()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1073
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v11, v12, 0x1

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    move v6, v12

    .local v6, index:I
    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 1074
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter;->getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v10

    .line 1075
    move-object v14, v10

    .line 1076
    .restart local v14       #lastArgument:Ljava/lang/Object;
    const/4 v9, 0x1

    .line 1079
    .end local v6           #index:I
    .end local v10           #argument:Ljava/lang/Object;
    .end local v14           #lastArgument:Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Ljava/util/Formatter;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1081
    .local v19, substitution:Ljava/lang/CharSequence;
    if-eqz v19, :cond_1

    .line 1082
    const/4 v4, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1084
    :cond_1
    #getter for: Ljava/util/Formatter$FormatSpecifierParser;->i:I
    invoke-static {v7}, Ljava/util/Formatter$FormatSpecifierParser;->access$000(Ljava/util/Formatter$FormatSpecifierParser;)I

    move-result v13

    .end local v19           #substitution:Ljava/lang/CharSequence;
    .end local v20           #token:Ljava/util/Formatter$FormatToken;
    :goto_4
    move-object v8, v14

    move v12, v11

    .line 1086
    .end local v11           #currentObjectIndex:I
    .restart local v12       #currentObjectIndex:I
    goto :goto_0

    .end local v17           #plainTextEnd:I
    :cond_2
    move/from16 v17, v16

    .line 1061
    goto :goto_1

    .line 1073
    .restart local v10       #argument:Ljava/lang/Object;
    .restart local v17       #plainTextEnd:I
    .restart local v20       #token:Ljava/util/Formatter$FormatToken;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v6

    move v11, v12

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    goto :goto_2

    .line 1087
    .end local v10           #argument:Ljava/lang/Object;
    .end local v11           #currentObjectIndex:I
    .end local v16           #nextPercent:I
    .end local v17           #plainTextEnd:I
    .end local v18           #plainTextStart:I
    .end local v20           #token:Ljava/util/Formatter$FormatToken;
    .restart local v12       #currentObjectIndex:I
    :cond_4
    return-void

    .restart local v10       #argument:Ljava/lang/Object;
    .restart local v16       #nextPercent:I
    .restart local v17       #plainTextEnd:I
    .restart local v18       #plainTextStart:I
    .restart local v20       #token:Ljava/util/Formatter$FormatToken;
    :cond_5
    move-object v14, v8

    move v11, v12

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    goto :goto_3

    .end local v10           #argument:Ljava/lang/Object;
    .end local v11           #currentObjectIndex:I
    .end local v20           #token:Ljava/util/Formatter$FormatToken;
    .restart local v12       #currentObjectIndex:I
    :cond_6
    move-object v14, v8

    move v11, v12

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    goto :goto_4
.end method

.method private getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .parameter "args"
    .parameter "index"
    .parameter "fsp"
    .parameter "lastArgument"
    .parameter "hasLastArgumentSet"

    .prologue
    const/4 v1, -0x2

    .line 1100
    if-ne p2, v1, :cond_0

    if-nez p5, :cond_0

    .line 1101
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_0
    if-nez p1, :cond_2

    .line 1105
    const/4 p4, 0x0

    .line 1116
    .end local p4
    :cond_1
    :goto_0
    return-object p4

    .line 1108
    .restart local p4
    :cond_2
    array-length v0, p1

    if-lt p2, v0, :cond_3

    .line 1109
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_3
    if-eq p2, v1, :cond_1

    .line 1116
    aget-object p4, p1, p2

    goto :goto_0
.end method

.method private getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .locals 2
    .parameter "pattern"

    .prologue
    .line 592
    sget-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter$CachedDecimalFormat;

    iget-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    invoke-virtual {v0, v1, p1}, Ljava/util/Formatter$CachedDecimalFormat;->update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method private insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x2d

    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1516
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1517
    .local v0, digitsLength:I
    const/4 v2, 0x0

    .line 1518
    .local v2, i:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1519
    add-int/lit8 v0, v0, -0x1

    .line 1520
    add-int/lit8 v2, v2, 0x1

    .line 1521
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1525
    :cond_0
    rem-int/lit8 v1, v0, 0x3

    .line 1526
    .local v1, headLength:I
    if-nez v1, :cond_1

    .line 1527
    const/4 v1, 0x3

    .line 1529
    :cond_1
    add-int v4, v2, v1

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1530
    add-int/2addr v2, v1

    .line 1533
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1534
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v4, v4, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1535
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1533
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 1537
    :cond_2
    return-object v3
.end method

.method private localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "s"

    .prologue
    .line 1495
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1496
    .local v2, length:I
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    add-int/lit8 v3, v5, -0x30

    .line 1497
    .local v3, offsetToLocalizedDigits:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1498
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1499
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1500
    .local v0, ch:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 1501
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 1503
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1505
    .end local v0           #ch:C
    :cond_1
    return-object v4
.end method

.method private outputCharSequence(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "cs"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1092
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method private padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 10
    .parameter "source"
    .parameter "startIndex"

    .prologue
    .line 1611
    move v6, p2

    .line 1612
    .local v6, start:I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v7

    .line 1613
    .local v7, width:I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    .line 1615
    .local v4, precision:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1616
    .local v0, length:I
    if-ltz v4, :cond_0

    .line 1617
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1618
    instance-of v8, p1, Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    move-object v8, p1

    .line 1619
    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1624
    :cond_0
    :goto_0
    if-lez v7, :cond_1

    .line 1625
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1627
    :cond_1
    if-lt v0, v7, :cond_3

    .line 1652
    .end local p1
    :goto_1
    return-object p1

    .line 1621
    .restart local p1
    :cond_2
    const/4 v8, 0x0

    invoke-interface {p1, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 1631
    :cond_3
    const/16 v1, 0x20

    .line 1632
    .local v1, paddingChar:C
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v8, :cond_5

    .line 1633
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_4

    .line 1634
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v1, v8, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 1642
    :goto_2
    sub-int v8, v7, v0

    new-array v2, v8, [C

    .line 1643
    .local v2, paddingChars:[C
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1645
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v3, v8, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    .line 1646
    .local v3, paddingRight:Z
    invoke-direct {p0, p1}, Ljava/util/Formatter;->toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1647
    .local v5, result:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_6

    .line 1648
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_3
    move-object p1, v5

    .line 1652
    goto :goto_1

    .line 1636
    .end local v2           #paddingChars:[C
    .end local v3           #paddingRight:Z
    .end local v5           #result:Ljava/lang/StringBuilder;
    :cond_4
    const/16 v1, 0x30

    goto :goto_2

    .line 1640
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 1650
    .restart local v2       #paddingChars:[C
    .restart local v3       #paddingRight:Z
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private to12Hour(I)I
    .locals 0
    .parameter "hour"

    .prologue
    .line 1972
    if-nez p1, :cond_0

    const/16 p1, 0xc

    .end local p1
    :cond_0
    return p1
.end method

.method private toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "cs"

    .prologue
    .line 1656
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "token"
    .parameter "argument"

    .prologue
    const/4 v1, 0x0

    .line 1406
    iput-object p1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    .line 1407
    iput-object p2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .line 1413
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1414
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1440
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$FormatToken;->checkFlags(Ljava/lang/Object;)V

    .line 1442
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 1475
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v2

    throw v2

    .line 1416
    :sswitch_0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 1417
    const-string v1, "null"

    .line 1483
    :cond_1
    :goto_0
    return-object v1

    .line 1418
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-nez v2, :cond_0

    .line 1419
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1423
    :sswitch_1
    iget-object v2, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    .line 1424
    .local v0, needLocalizedDigits:Z
    :goto_1
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v2, v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 1425
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_5

    .line 1426
    :cond_3
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    goto :goto_0

    .line 1423
    .end local v0           #needLocalizedDigits:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1428
    .restart local v0       #needLocalizedDigits:Z
    :cond_5
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 1429
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    goto :goto_0

    .line 1433
    :cond_6
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    .line 1434
    :cond_7
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1435
    .local v1, result:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1444
    .end local v0           #needLocalizedDigits:Z
    .end local v1           #result:Ljava/lang/String;
    :sswitch_2
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBoolean()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1478
    .local v1, result:Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1479
    if-eqz v1, :cond_1

    .line 1480
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1447
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_3
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromHashCode()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1448
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1450
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_4
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1451
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1453
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromCharacter()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1454
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1456
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_6
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_9

    .line 1457
    :cond_8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBigInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1459
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_9
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1461
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1463
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_7
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromFloat()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1464
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1466
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromPercent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1467
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1469
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_9
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 1470
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1472
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_a
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromDateTime()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1473
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1414
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    .line 1442
    :sswitch_data_1
    .sparse-switch
        0x25 -> :sswitch_8
        0x41 -> :sswitch_7
        0x42 -> :sswitch_2
        0x43 -> :sswitch_5
        0x45 -> :sswitch_7
        0x47 -> :sswitch_7
        0x48 -> :sswitch_3
        0x53 -> :sswitch_4
        0x54 -> :sswitch_a
        0x58 -> :sswitch_6
        0x61 -> :sswitch_7
        0x62 -> :sswitch_2
        0x63 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
        0x68 -> :sswitch_3
        0x6e -> :sswitch_9
        0x6f -> :sswitch_6
        0x73 -> :sswitch_4
        0x74 -> :sswitch_a
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method private transformA(Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 2226
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_1

    .line 2227
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toHexString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    :goto_0
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2257
    :cond_0
    :goto_1
    return-void

    .line 2228
    :cond_1
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_2

    .line 2229
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2231
    :cond_2
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v5

    throw v5

    .line 2238
    :cond_3
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v3

    .line 2239
    .local v3, precision:I
    if-nez v3, :cond_4

    .line 2240
    const/4 v3, 0x1

    .line 2242
    :cond_4
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 2243
    .local v1, indexOfFirstFractionalDigit:I
    const-string v5, "p"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2244
    .local v2, indexOfP:I
    sub-int v0, v2, v1

    .line 2246
    .local v0, fractionalLength:I
    if-eq v0, v3, :cond_0

    .line 2250
    if-ge v0, v3, :cond_5

    .line 2251
    sub-int v5, v3, v0

    new-array v4, v5, [C

    .line 2252
    .local v4, zeros:[C
    const/16 v5, 0x30

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2253
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2256
    .end local v4           #zeros:[C
    :cond_5
    add-int v5, v1, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private transformE(Ljava/lang/StringBuilder;)V
    .locals 11
    .parameter "result"

    .prologue
    const/4 v10, 0x0

    .line 2094
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2095
    .local v5, precision:I
    const-string v4, "0E+00"

    .line 2096
    .local v4, pattern:Ljava/lang/String;
    if-lez v5, :cond_0

    .line 2097
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0."

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2098
    .local v6, sb:Ljava/lang/StringBuilder;
    new-array v7, v5, [C

    .line 2099
    .local v7, zeros:[C
    const/16 v8, 0x30

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 2100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2101
    const-string v8, "E+00"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2105
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #zeros:[C
    :cond_0
    invoke-direct {p0, v4}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v3

    .line 2107
    .local v3, nf:Llibcore/icu/NativeDecimalFormat;
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v8, v8, Ljava/math/BigDecimal;

    if-eqz v8, :cond_2

    .line 2108
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/math/BigDecimal;

    invoke-virtual {v3, v8, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v0

    .line 2113
    .local v0, chars:[C
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v0

    if-ge v1, v8, :cond_3

    .line 2114
    aget-char v8, v0, v1

    const/16 v9, 0x45

    if-ne v8, v9, :cond_1

    .line 2115
    const/16 v8, 0x65

    aput-char v8, v0, v1

    .line 2113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2110
    .end local v0           #chars:[C
    .end local v1           #i:I
    :cond_2
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v0

    .restart local v0       #chars:[C
    goto :goto_0

    .line 2118
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2120
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    .line 2121
    const-string v8, "e"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2122
    .local v2, indexOfE:I
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v2, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2124
    .end local v2           #indexOfE:I
    :cond_4
    return-void
.end method

.method private transformF(Ljava/lang/StringBuilder;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x30

    .line 2192
    const-string v3, "0.000000"

    .line 2193
    .local v3, pattern:Ljava/lang/String;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2194
    .local v5, precision:I
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v7, :cond_0

    const/4 v7, 0x6

    if-eq v5, v7, :cond_3

    .line 2195
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2196
    .local v4, patternBuilder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v7, :cond_1

    .line 2197
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2198
    const/4 v0, 0x3

    .line 2199
    .local v0, groupingSize:I
    const/4 v7, 0x2

    new-array v6, v7, [C

    .line 2200
    .local v6, sharps:[C
    const/16 v7, 0x23

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([CC)V

    .line 2201
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2203
    .end local v0           #groupingSize:I
    .end local v6           #sharps:[C
    :cond_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2204
    if-lez v5, :cond_2

    .line 2205
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2206
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 2207
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2210
    .end local v1           #i:I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2213
    .end local v4           #patternBuilder:Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0, v3}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v2

    .line 2214
    .local v2, nf:Llibcore/icu/NativeDecimalFormat;
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_5

    .line 2215
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v2, v7, v9}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2220
    :goto_1
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v7, :cond_4

    if-nez v5, :cond_4

    .line 2221
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2223
    :cond_4
    return-void

    .line 2217
    :cond_5
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v9}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private transformFromBigInteger()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0x6f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1750
    const/4 v5, 0x0

    .line 1751
    .local v5, startIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1752
    .local v4, result:Ljava/lang/StringBuilder;
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    .line 1753
    .local v0, bigInt:Ljava/math/BigInteger;
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    .line 1755
    .local v1, currentConversionType:C
    if-nez v0, :cond_0

    .line 1756
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1803
    :goto_0
    return-object v6

    .line 1759
    :cond_0
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_5

    move v3, v6

    .line 1761
    .local v3, isNegative:Z
    :goto_1
    const/16 v8, 0x64

    if-ne v1, v8, :cond_6

    .line 1762
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1763
    .local v2, digits:Ljava/lang/CharSequence;
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v8, :cond_1

    .line 1764
    invoke-direct {p0, v2}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1766
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1774
    .end local v2           #digits:Ljava/lang/CharSequence;
    :goto_2
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_2

    .line 1775
    if-eqz v3, :cond_8

    move v5, v6

    .line 1776
    :goto_3
    if-ne v1, v9, :cond_9

    .line 1777
    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    add-int/lit8 v5, v5, 0x1

    .line 1785
    :cond_2
    :goto_4
    if-nez v3, :cond_4

    .line 1786
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_3

    .line 1787
    const/16 v6, 0x2b

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1788
    add-int/lit8 v5, v5, 0x1

    .line 1790
    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_4

    .line 1791
    const/16 v6, 0x20

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1792
    add-int/lit8 v5, v5, 0x1

    .line 1797
    :cond_4
    if-eqz v3, :cond_b

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_b

    .line 1798
    invoke-direct {p0, v4}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    .end local v3           #isNegative:Z
    :cond_5
    move v3, v7

    .line 1759
    goto :goto_1

    .line 1767
    .restart local v3       #isNegative:Z
    :cond_6
    if-ne v1, v9, :cond_7

    .line 1769
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1772
    :cond_7
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    move v5, v7

    .line 1775
    goto :goto_3

    .line 1779
    :cond_9
    const/16 v6, 0x78

    if-eq v1, v6, :cond_a

    const/16 v6, 0x58

    if-ne v1, v6, :cond_2

    .line 1780
    :cond_a
    const-string v6, "0x"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    .line 1800
    :cond_b
    if-eqz v3, :cond_c

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_c

    .line 1801
    add-int/lit8 v5, v5, 0x1

    .line 1803
    :cond_c
    invoke-direct {p0, v4, v5}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private transformFromBoolean()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1542
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1543
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1549
    .local v0, result:Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1544
    .end local v0           #result:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1545
    const-string v0, "false"

    .restart local v0       #result:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1547
    .end local v0           #result:Ljava/lang/CharSequence;
    :cond_1
    const-string v0, "true"

    .restart local v0       #result:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private transformFromCharacter()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1587
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1588
    const-string v2, "null"

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1600
    :goto_0
    return-object v2

    .line 1590
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 1591
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1592
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 1593
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1594
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1595
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 1597
    :cond_3
    const/high16 v2, 0x1

    if-ge v0, v2, :cond_4

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1600
    .local v1, result:Ljava/lang/CharSequence;
    :goto_1
    invoke-direct {p0, v1, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1597
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1602
    .end local v0           #codePoint:I
    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v2

    throw v2
.end method

.method private transformFromDateTime()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 1807
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 1808
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1831
    :goto_0
    return-object v3

    .line 1812
    :cond_0
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    .line 1813
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    .line 1827
    .local v0, calendar:Ljava/util/Calendar;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1828
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1829
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v3

    throw v3

    .line 1815
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #result:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    .line 1816
    .local v1, date:Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 1817
    new-instance v1, Ljava/util/Date;

    .end local v1           #date:Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1823
    .restart local v1       #date:Ljava/util/Date;
    :goto_2
    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1824
    .restart local v0       #calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    .line 1818
    .end local v0           #calendar:Ljava/util/Calendar;
    :cond_2
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 1819
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .end local v1           #date:Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    .restart local v1       #date:Ljava/util/Date;
    goto :goto_2

    .line 1821
    :cond_3
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v3

    throw v3

    .line 1831
    .end local v1           #date:Ljava/util/Date;
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v2       #result:Ljava/lang/StringBuilder;
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method private transformFromFloat()Ljava/lang/CharSequence;
    .locals 13

    .prologue
    const/16 v12, 0x61

    const/16 v11, 0x41

    const/16 v10, 0x2b

    const/4 v9, 0x0

    .line 2024
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 2025
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2089
    :goto_0
    return-object v7

    .line 2026
    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Float;

    if-nez v7, :cond_1

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Double;

    if-eqz v7, :cond_3

    .line 2027
    :cond_1
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    .line 2028
    .local v4, number:Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 2029
    .local v1, d:D
    cmpl-double v7, v1, v1

    if-nez v7, :cond_2

    const-wide/high16 v7, 0x7ff0

    cmpl-double v7, v1, v7

    if-eqz v7, :cond_2

    const-wide/high16 v7, -0x10

    cmpl-double v7, v1, v7

    if-nez v7, :cond_4

    .line 2030
    :cond_2
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->transformFromSpecialNumber(D)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 2032
    .end local v1           #d:D
    .end local v4           #number:Ljava/lang/Number;
    :cond_3
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_6

    .line 2039
    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 2040
    .local v0, conversionType:C
    if-eq v0, v12, :cond_5

    if-eq v0, v11, :cond_5

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2041
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2044
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2045
    .local v5, result:Ljava/lang/StringBuilder;
    sparse-switch v0, :sswitch_data_0

    .line 2060
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v7

    throw v7

    .line 2036
    .end local v0           #conversionType:C
    .end local v5           #result:Ljava/lang/StringBuilder;
    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v7

    throw v7

    .line 2047
    .restart local v0       #conversionType:C
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :sswitch_0
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformA(Ljava/lang/StringBuilder;)V

    .line 2063
    :goto_1
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2065
    const/4 v6, 0x0

    .line 2066
    .local v6, startIndex:I
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->minusSign:C

    if-ne v7, v8, :cond_7

    .line 2067
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v7, :cond_9

    .line 2068
    invoke-direct {p0, v5}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_0

    .line 2050
    .end local v6           #startIndex:I
    :sswitch_1
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 2053
    :sswitch_2
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 2057
    :sswitch_3
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformG(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 2071
    .restart local v6       #startIndex:I
    :cond_7
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v7, :cond_8

    .line 2072
    const/16 v7, 0x20

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2073
    add-int/lit8 v6, v6, 0x1

    .line 2075
    :cond_8
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v7, :cond_9

    .line 2076
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2077
    add-int/lit8 v6, v6, 0x1

    .line 2081
    :cond_9
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2082
    .local v3, firstChar:C
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v7, :cond_b

    if-eq v3, v10, :cond_a

    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->minusSign:C

    if-ne v3, v7, :cond_b

    .line 2083
    :cond_a
    const/4 v6, 0x1

    .line 2086
    :cond_b
    if-eq v0, v12, :cond_c

    if-ne v0, v11, :cond_d

    .line 2087
    :cond_c
    add-int/lit8 v6, v6, 0x2

    .line 2089
    :cond_d
    invoke-direct {p0, v5, v6}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_0

    .line 2045
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_1
        0x47 -> :sswitch_3
        0x61 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
    .end sparse-switch
.end method

.method private transformFromHashCode()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1554
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1555
    const-string v0, "null"

    .line 1559
    .local v0, result:Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1557
    .end local v0           #result:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private transformFromInteger()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0x6f

    const/4 v8, 0x0

    .line 1673
    const/4 v3, 0x0

    .line 1674
    .local v3, startIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1675
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 1678
    .local v0, currentConversionType:C
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 1679
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1690
    .local v4, value:J
    :goto_0
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v6, :cond_0

    .line 1691
    if-ne v0, v9, :cond_7

    .line 1692
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    add-int/lit8 v3, v3, 0x1

    .line 1700
    :cond_0
    :goto_1
    const/16 v6, 0x64

    if-ne v0, v6, :cond_c

    .line 1701
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, digits:Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v6, :cond_1

    .line 1703
    invoke-direct {p0, v1}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1705
    :cond_1
    iget-object v6, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v6, v6, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v7, 0x30

    if-eq v6, v7, :cond_2

    .line 1706
    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1708
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1710
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a

    .line 1711
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_8

    .line 1712
    invoke-direct {p0, v2}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1741
    .end local v1           #digits:Ljava/lang/CharSequence;
    :goto_2
    return-object v6

    .line 1680
    .end local v4           #value:J
    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 1681
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    .restart local v4       #value:J
    goto :goto_0

    .line 1682
    .end local v4           #value:J
    :cond_4
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_5

    .line 1683
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->longValue()J

    move-result-wide v4

    .restart local v4       #value:J
    goto :goto_0

    .line 1684
    .end local v4           #value:J
    :cond_5
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_6

    .line 1685
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->longValue()J

    move-result-wide v4

    .restart local v4       #value:J
    goto :goto_0

    .line 1687
    .end local v4           #value:J
    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v6

    throw v6

    .line 1695
    .restart local v4       #value:J
    :cond_7
    const-string v6, "0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1713
    .restart local v1       #digits:Ljava/lang/CharSequence;
    :cond_8
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_9

    .line 1714
    add-int/lit8 v3, v3, 0x1

    .line 1741
    .end local v1           #digits:Ljava/lang/CharSequence;
    :cond_9
    :goto_3
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_2

    .line 1717
    .restart local v1       #digits:Ljava/lang/CharSequence;
    :cond_a
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_b

    .line 1718
    const/16 v6, 0x2b

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1719
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1720
    :cond_b
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_9

    .line 1721
    const/16 v6, 0x20

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1722
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1727
    .end local v1           #digits:Ljava/lang/CharSequence;
    :cond_c
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_e

    .line 1728
    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 1734
    :cond_d
    :goto_4
    if-ne v0, v9, :cond_10

    .line 1735
    invoke-static {v4, v5}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1729
    :cond_e
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_f

    .line 1730
    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    goto :goto_4

    .line 1731
    :cond_f
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_d

    .line 1732
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    goto :goto_4

    .line 1737
    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private transformFromNull()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1745
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v1, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 1746
    const-string v0, "null"

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromPercent()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1607
    const-string v0, "%"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromSpecialNumber(D)Ljava/lang/CharSequence;
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 1997
    const/4 v0, 0x0

    .line 1998
    .local v0, source:Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1999
    const-string v0, "NaN"

    .line 2018
    :goto_0
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2019
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v3, v1, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 2020
    invoke-direct {p0, v0, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    return-object v1

    .line 2000
    :cond_0
    const-wide/high16 v1, 0x7ff0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_3

    .line 2001
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v1, :cond_1

    .line 2002
    const-string v0, "+Infinity"

    goto :goto_0

    .line 2003
    :cond_1
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v1, :cond_2

    .line 2004
    const-string v0, " Infinity"

    goto :goto_0

    .line 2006
    :cond_2
    const-string v0, "Infinity"

    goto :goto_0

    .line 2008
    :cond_3
    const-wide/high16 v1, -0x10

    cmpl-double v1, p1, v1

    if-nez v1, :cond_5

    .line 2009
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v1, :cond_4

    .line 2010
    const-string v0, "(Infinity)"

    goto :goto_0

    .line 2012
    :cond_4
    const-string v0, "-Infinity"

    goto :goto_0

    .line 2015
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private transformFromString()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 1563
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-eqz v2, :cond_3

    .line 1564
    const/4 v0, 0x0

    .line 1565
    .local v0, flags:I
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v2, :cond_0

    .line 1566
    or-int/lit8 v0, v0, 0x1

    .line 1568
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v2, :cond_1

    .line 1569
    or-int/lit8 v0, v0, 0x4

    .line 1571
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1572
    or-int/lit8 v0, v0, 0x2

    .line 1574
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/util/Formattable;

    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v3

    iget-object v4, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    invoke-interface {v2, p0, v0, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 1580
    const/4 v2, 0x0

    .line 1583
    .end local v0           #flags:I
    :goto_0
    return-object v2

    .line 1582
    :cond_3
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1583
    .local v1, result:Ljava/lang/CharSequence;
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1582
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_4
    const-string v1, "null"

    goto :goto_1
.end method

.method private transformG(Ljava/lang/StringBuilder;)V
    .locals 13
    .parameter "result"

    .prologue
    const-wide/high16 v9, 0x3ff0

    const-wide/high16 v11, 0x4024

    .line 2127
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2128
    .local v5, precision:I
    if-nez v5, :cond_0

    .line 2129
    const/4 v5, 0x1

    .line 2131
    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2133
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 2134
    .local v1, d:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v1, v7

    if-nez v7, :cond_1

    .line 2135
    add-int/lit8 v5, v5, -0x1

    .line 2136
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2137
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    .line 2188
    :goto_0
    return-void

    .line 2141
    :cond_1
    const/4 v6, 0x1

    .line 2142
    .local v6, requireScientificRepresentation:Z
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 2143
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2144
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2145
    add-int/lit8 v5, v5, -0x1

    .line 2146
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2147
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 2150
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/MathContext;

    invoke-direct {v7, v5}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v0, v1, v2, v7}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 2151
    .local v0, b:Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2152
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2154
    .local v3, l:J
    cmpl-double v7, v1, v9

    if-ltz v7, :cond_6

    int-to-double v7, v5

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpg-double v7, v1, v7

    if-gez v7, :cond_6

    .line 2155
    long-to-double v7, v3

    int-to-double v9, v5

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    .line 2156
    const/4 v6, 0x0

    .line 2157
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v5, v7

    .line 2158
    if-gez v5, :cond_3

    const/4 v5, 0x0

    .line 2159
    :cond_3
    add-int/lit8 v7, v5, 0x1

    int-to-double v7, v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 2160
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 2161
    add-int/lit8 v5, v5, 0x1

    .line 2163
    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2180
    :cond_5
    :goto_1
    if-eqz v6, :cond_8

    .line 2181
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2182
    add-int/lit8 v5, v5, -0x1

    .line 2183
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2184
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 2166
    :cond_6
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2167
    const-wide/high16 v7, -0x3ff0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_5

    cmpg-double v7, v1, v9

    if-gez v7, :cond_5

    .line 2168
    const/4 v6, 0x0

    .line 2169
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    .line 2170
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2171
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 2172
    add-int/lit8 v5, v5, 0x1

    .line 2174
    :cond_7
    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2175
    long-to-double v7, v3

    add-int/lit8 v9, v5, -0x4

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_5

    .line 2176
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    goto :goto_1

    .line 2186
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0
.end method

.method private wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "result"

    .prologue
    const/16 v2, 0x29

    const/4 v1, 0x0

    .line 1660
    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1661
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v0, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 1663
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/StringBuilder;

    .line 1664
    .restart local p1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    :goto_0
    return-object p1

    .line 1666
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1667
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/StringBuilder;

    .restart local p1
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 967
    iget-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    if-nez v1, :cond_0

    .line 968
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    .line 970
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 946
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 947
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    .line 949
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 1
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1009
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 2
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1036
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1038
    .local v0, originalLocale:Ljava/util/Locale;
    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .end local p1
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1039
    iget-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    .line 1040
    invoke-direct {p0, p2, p3}, Ljava/util/Formatter;->doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1044
    return-object p0

    .line 1042
    :catchall_0
    move-exception v1

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    throw v1
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 907
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 908
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 920
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 935
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
