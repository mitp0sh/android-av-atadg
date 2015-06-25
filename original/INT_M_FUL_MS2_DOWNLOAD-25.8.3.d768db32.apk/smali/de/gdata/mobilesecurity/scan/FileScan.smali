.class public Lde/gdata/mobilesecurity/scan/FileScan;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native calcFullMD5(Ljava/lang/String;)[J
.end method

.method public static calcFullMD5Native(Ljava/lang/String;)[J
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lde/gdata/mobilesecurity/util/BaseLibLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0}, Lde/gdata/mobilesecurity/scan/FileScan;->calcFullMD5(Ljava/lang/String;)[J

    move-result-object v0

    .line 12
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    goto :goto_0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static native calcHash([BII)[J
.end method

.method public static calcHashNative([BII)[J
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lde/gdata/mobilesecurity/util/BaseLibLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1, p2}, Lde/gdata/mobilesecurity/scan/FileScan;->calcHash([BII)[J

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    goto :goto_0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static native isLink(Ljava/lang/String;)I
.end method

.method public static native isReadable(Ljava/lang/String;)Z
.end method

.method public static native isWriteable(Ljava/lang/String;)Z
.end method
