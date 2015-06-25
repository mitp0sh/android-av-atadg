.class public Lde/gdata/mobilesecurity/sigfile/SignatureDb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SIG_FILE_APPSIGS:Ljava/lang/String; = "app.sig"

.field public static final SIG_FILE_APPSIG_HASHES:Ljava/lang/String; = "apph.sig"

.field public static final SIG_FILE_DIFF_UPDATE_LIST:Ljava/lang/String; = "difflist.sig"

.field public static final SIG_FILE_FILESIGS:Ljava/lang/String; = "file.sig"

.field public static final SIG_FILE_FILESIG_HASHES:Ljava/lang/String; = "fileh.sig"

.field public static final SIG_FILE_MALWARE_NAMES:Ljava/lang/String; = "names.sig"

.field public static final SIG_FILE_VERSION:Ljava/lang/String; = "version.sig"

.field private static final a:Ljava/util/Date;

.field private static volatile b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lde/gdata/mobilesecurity/sigfile/MalwareType;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

.field private static volatile e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a:Ljava/util/Date;

    .line 46
    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    .line 47
    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    .line 48
    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    .line 50
    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private a([BI)I
    .locals 4

    .prologue
    .line 418
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 419
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    .line 420
    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private declared-synchronized a(Landroid/content/Context;I)Lde/gdata/mobilesecurity/sigfile/MalwareType;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v3, 0x0

    .line 99
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    if-nez v0, :cond_4

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 110
    :goto_0
    const/4 v0, 0x2

    :try_start_2
    new-array v4, v0, [B

    .line 111
    :cond_0
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v0

    .line 113
    new-array v5, v0, [B

    .line 114
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v6

    .line 117
    const/4 v0, 0x5

    aget-byte v7, v5, v0

    .line 118
    new-array v8, v7, [B

    move v0, v3

    .line 119
    :goto_2
    if-ge v0, v7, :cond_2

    .line 120
    add-int/lit8 v9, v0, 0x6

    aget-byte v9, v5, v9

    aput-byte v9, v8, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_1
    :try_start_3
    const-string v0, "names.sig"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    move-object v2, v1

    .line 108
    goto :goto_0

    .line 121
    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v9, "UTF8"

    invoke-direct {v0, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 122
    add-int/lit8 v7, v7, 0x6

    aget-byte v5, v5, v7

    .line 123
    sget-object v7, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 124
    sget-object v7, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Lde/gdata/mobilesecurity/sigfile/MalwareType;

    invoke-direct {v8, v0, v5}, Lde/gdata/mobilesecurity/sigfile/MalwareType;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 131
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 133
    :cond_4
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sigfile/MalwareType;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    :goto_4
    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_6
    new-instance v0, Lde/gdata/mobilesecurity/sigfile/MalwareType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/sigfile/MalwareType;-><init>(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_3
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion;
    .locals 13

    .prologue
    const/16 v6, 0xa

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 224
    .line 228
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v3

    .line 234
    :goto_0
    const/16 v2, 0xa

    :try_start_1
    new-array v2, v2, [B

    .line 235
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 236
    const/16 v5, 0x8

    invoke-direct {p0, v2, v5}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v2

    .line 237
    new-array v5, v2, [B

    .line 238
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 239
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v6

    .line 240
    const/4 v2, 0x5

    invoke-direct {p0, v5, v2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d([BI)Ljava/util/Date;

    move-result-object v5

    .line 241
    new-instance v2, Lde/gdata/mobilesecurity/sigfile/SigVersion;

    invoke-direct {v2, v6, v5}, Lde/gdata/mobilesecurity/sigfile/SigVersion;-><init>(ILjava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 245
    :goto_1
    const/4 v3, 0x2

    :try_start_2
    new-array v5, v3, [B

    .line 246
    :goto_2
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    array-length v6, v5

    if-ne v3, v6, :cond_2

    .line 247
    const/4 v3, 0x0

    invoke-direct {p0, v5, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v3

    .line 248
    new-array v6, v3, [B

    .line 249
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    .line 250
    const/4 v3, 0x0

    aget-byte v7, v6, v3

    .line 251
    new-array v8, v7, [B

    move v3, v4

    .line 252
    :goto_3
    if-ge v3, v7, :cond_1

    .line 253
    add-int/lit8 v9, v3, 0x1

    aget-byte v9, v6, v9

    aput-byte v9, v8, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 231
    :cond_0
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 232
    goto :goto_0

    .line 254
    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/String;

    const-string v9, "UTF8"

    invoke-direct {v3, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 255
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0, v6, v8}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v8

    .line 256
    add-int/lit8 v7, v7, 0x5

    invoke-direct {p0, v6, v7}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c([BI)J

    move-result-wide v6

    .line 257
    invoke-virtual {v2, v3, v8, v6, v7}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->addFile(Ljava/lang/String;IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 260
    :catch_0
    move-exception v3

    .line 261
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 263
    :cond_2
    new-array v3, v11, [Ljava/io/InputStream;

    aput-object v0, v3, v4

    aput-object v1, v3, v10

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 264
    return-object v2

    .line 260
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    goto :goto_4

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method private a(II)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    if-nez p1, :cond_0

    const-string v0, ""

    .line 212
    :goto_0
    return-object v0

    .line 198
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 202
    const/16 v0, 0x1a

    if-ge v1, v0, :cond_2

    .line 203
    rem-int/lit8 v0, v1, 0x1a

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    .line 204
    new-array v1, v6, [C

    aput-char v0, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_2
    const-string v0, ""

    .line 208
    :cond_3
    const-string v2, ""

    if-ne v0, v2, :cond_4

    rem-int/lit8 v2, v1, 0x1a

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    .line 209
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v6, [C

    aput-char v2, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    div-int/lit8 v1, v1, 0x1a

    .line 211
    if-gtz v1, :cond_3

    goto :goto_0

    .line 208
    :cond_4
    add-int/lit8 v2, v1, -0x1

    rem-int/lit8 v2, v2, 0x1a

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    goto :goto_1
.end method

.method private declared-synchronized a(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 148
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    .line 150
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    .line 154
    :try_start_1
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 160
    :goto_0
    const/4 v0, 0x2

    :try_start_2
    new-array v4, v0, [B

    .line 161
    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v0

    .line 163
    new-array v5, v0, [B

    .line 164
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 165
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    if-ne v0, v10, :cond_2

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v6

    .line 167
    if-eq v6, p2, :cond_3

    if-eqz p3, :cond_2

    .line 168
    :cond_3
    const/4 v0, 0x5

    aget-byte v7, v5, v0

    .line 169
    new-array v8, v7, [B

    move v0, v3

    .line 170
    :goto_1
    if-ge v0, v7, :cond_5

    .line 171
    add-int/lit8 v9, v0, 0x6

    aget-byte v9, v5, v9

    aput-byte v9, v8, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_4
    :try_start_3
    const-string v0, "names.sig"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    move-object v2, v1

    .line 158
    goto :goto_0

    .line 172
    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF8"

    invoke-direct {v0, v8, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 173
    sget-object v5, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    if-nez p3, :cond_2

    .line 182
    :cond_6
    :goto_2
    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 184
    :cond_7
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 185
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    :goto_3
    monitor-exit p0

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 180
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :cond_8
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    goto :goto_3

    .line 179
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private declared-synchronized a(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 305
    monitor-enter p0

    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v3, v1

    .line 316
    :goto_0
    const/16 v4, 0xc

    .line 317
    :try_start_1
    new-array v5, v4, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 318
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 319
    const/4 v1, 0x0

    invoke-direct {p0, v5, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c([BI)J

    move-result-wide v6

    .line 320
    const/16 v1, 0x8

    invoke-direct {p0, v5, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v8

    .line 321
    cmp-long v1, v6, p2

    if-nez v1, :cond_0

    .line 322
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 323
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 326
    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    .line 327
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v0, v3

    move-object v3, v2

    move-object v2, v1

    .line 329
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    monitor-exit p0

    return-object v0

    .line 313
    :cond_3
    :try_start_4
    const-string v0, "apph.sig"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    move-object v3, v2

    .line 314
    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isSignatureUpdateInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    .line 85
    const-string v2, ""

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSignatureVersion(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    sget-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 87
    :cond_2
    const-string v1, "version.sig"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private b([BI)I
    .locals 8

    .prologue
    .line 430
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 431
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    .line 432
    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    .line 433
    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    int-to-long v6, v6

    .line 434
    or-long/2addr v0, v2

    or-long/2addr v0, v4

    or-long/2addr v0, v6

    long-to-int v0, v0

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 787
    const v0, 0x7f06000e

    const-string v1, "version.sig"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyRawResourceToPrivateFile(Landroid/content/Context;ILjava/lang/String;)Z

    .line 788
    const v0, 0x7f06000b

    const-string v1, "names.sig"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyRawResourceToPrivateFile(Landroid/content/Context;ILjava/lang/String;)Z

    .line 789
    const v0, 0x7f060008

    const-string v1, "fileh.sig"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyRawResourceToPrivateFile(Landroid/content/Context;ILjava/lang/String;)Z

    .line 790
    const v0, 0x7f060007

    const-string v1, "file.sig"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyRawResourceToPrivateFile(Landroid/content/Context;ILjava/lang/String;)Z

    .line 791
    const v0, 0x7f060002

    const-string v1, "apph.sig"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyRawResourceToPrivateFile(Landroid/content/Context;ILjava/lang/String;)Z

    .line 792
    const v0, 0x7f060001

    const-string v1, "app.sig"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyRawResourceToPrivateFile(Landroid/content/Context;ILjava/lang/String;)Z

    .line 793
    return-void
.end method

.method private c([BI)J
    .locals 6

    .prologue
    const-wide v4, 0xffffffffL

    .line 444
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v0

    .line 445
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v1

    .line 446
    int-to-long v2, v1

    and-long/2addr v2, v4

    const/16 v1, 0x20

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private d([BI)Ljava/util/Date;
    .locals 7

    .prologue
    const/16 v3, 0xc

    const/4 v0, 0x0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    :goto_0
    if-ge v0, v3, :cond_0

    .line 460
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 466
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 467
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 468
    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 469
    const/16 v4, 0x8

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 470
    const/16 v5, 0xa

    const/16 v6, 0xc

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 471
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 472
    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 473
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    :goto_1
    return-object v0

    .line 475
    :catch_0
    move-exception v0

    .line 478
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a:Ljava/util/Date;

    goto :goto_1
.end method

.method private e([BI)Ljava/util/Date;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 491
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 497
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 503
    :goto_1
    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 503
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a:Ljava/util/Date;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getAppSignature(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lde/gdata/mobilesecurity/sigfile/MalwareSignature;
    .locals 16

    .prologue
    .line 342
    monitor-enter p0

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    const/4 v2, 0x2

    if-ge v10, v2, :cond_8

    .line 343
    if-nez v10, :cond_1

    const/4 v2, 0x1

    .line 345
    :goto_1
    :try_start_0
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 346
    if-eqz v2, :cond_9

    .line 347
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 342
    :cond_0
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 343
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 348
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    :goto_3
    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 351
    array-length v3, v2

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Lde/gdata/mobilesecurity/scan/FileScan;->calcHashNative([BII)[J

    move-result-object v11

    .line 355
    const/4 v2, 0x0

    aget-wide v2, v11, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    const/4 v4, 0x0

    .line 360
    const/4 v3, 0x0

    .line 362
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    move-object v9, v4

    .line 368
    :goto_5
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v8, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 369
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    .line 370
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_6

    .line 365
    :cond_4
    :try_start_3
    const-string v5, "app.sig"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    move-object v9, v8

    .line 366
    goto :goto_5

    .line 373
    :cond_5
    const/16 v2, 0x10

    :try_start_4
    new-array v2, v2, [B

    .line 374
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7

    .line 375
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    .line 376
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v4

    .line 377
    const/4 v5, 0x3

    aget-byte v5, v2, v5

    .line 378
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c([BI)J

    move-result-wide v6

    .line 379
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v2

    .line 381
    const/4 v13, 0x1

    aget-wide v14, v11, v13

    cmp-long v6, v6, v14

    if-nez v6, :cond_7

    .line 382
    if-eqz v2, :cond_6

    .line 383
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 384
    const-string v7, "UTF8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 385
    array-length v7, v6

    const/16 v13, 0x2a

    invoke-static {v6, v7, v13}, Lde/gdata/mobilesecurity/scan/FileScan;->calcHashNative([BII)[J

    move-result-object v6

    .line 388
    const-string v7, "MotoMB511"

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 389
    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/32 v14, 0xffff

    and-long/2addr v6, v14

    int-to-long v14, v2

    cmp-long v2, v6, v14

    if-nez v2, :cond_3

    .line 392
    :cond_6
    new-instance v2, Lde/gdata/mobilesecurity/sigfile/MalwareSignature;

    const/4 v6, 0x1

    aget-wide v6, v11, v6

    const-wide/32 v14, 0xffff

    and-long/2addr v6, v14

    long-to-int v6, v6

    new-instance v7, Lde/gdata/mobilesecurity/util/HashResult;

    invoke-direct {v7, v11}, Lde/gdata/mobilesecurity/util/HashResult;-><init>([J)V

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/HashResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lde/gdata/mobilesecurity/sigfile/MalwareSignature;-><init>(IIIILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 408
    :goto_7
    monitor-exit p0

    return-object v2

    .line 398
    :catch_0
    move-exception v2

    .line 399
    :goto_8
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v4

    .line 401
    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 404
    :catch_1
    move-exception v2

    .line 405
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 342
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 408
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 398
    :catch_2
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    goto :goto_8

    :cond_9
    move-object v2, v3

    goto/16 :goto_3
.end method

.method public getDiffUpdateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;
    .locals 10

    .prologue
    .line 803
    const/4 v6, 0x0

    .line 804
    const/4 v7, 0x0

    .line 806
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 807
    const/16 v0, 0xa

    :try_start_1
    new-array v0, v0, [B

    .line 808
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 809
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v0

    .line 810
    new-array v1, v0, [B

    .line 811
    invoke-virtual {v7, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 815
    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [B

    .line 816
    :goto_0
    if-nez v6, :cond_2

    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    array-length v1, v8

    if-ne v0, v1, :cond_2

    .line 817
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v0

    .line 818
    new-array v1, v0, [B

    .line 819
    invoke-virtual {v7, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 820
    const/4 v0, 0x0

    aget-byte v4, v1, v0

    .line 821
    new-array v3, v4, [B

    .line 822
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 823
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    aput-byte v2, v3, v0

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 824
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v0, "UTF8"

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 825
    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v3

    .line 826
    add-int/lit8 v0, v4, 0x5

    invoke-direct {p0, v1, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c([BI)J

    move-result-wide v4

    .line 827
    invoke-static {p2, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 828
    new-instance v1, Lde/gdata/mobilesecurity/sigfile/SigVersion;

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-direct {v1, v0, v9}, Lde/gdata/mobilesecurity/sigfile/SigVersion;-><init>(ILjava/util/Date;)V

    .line 829
    new-instance v0, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;-><init>(Lde/gdata/mobilesecurity/sigfile/SigVersion;Ljava/lang/String;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v6, v0

    .line 831
    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 836
    :goto_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V

    .line 837
    return-object v6

    .line 833
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 834
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 833
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_3
    move-object v0, v6

    goto :goto_2
.end method

.method public declared-synchronized getDiffUpdateFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 534
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion;

    move-result-object v2

    .line 535
    sget-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    if-nez v1, :cond_0

    .line 536
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-direct {p0, p1, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    .line 539
    :cond_0
    if-eqz v2, :cond_1

    sget-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 543
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    .line 536
    :cond_2
    :try_start_1
    const-string v1, "version.sig"

    goto :goto_0

    .line 541
    :cond_3
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigVersion()I

    move-result v1

    sget-object v3, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigVersion()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diff_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMalwareName(Landroid/content/Context;IIII)Lde/gdata/mobilesecurity/sigfile/MalwareName;
    .locals 5

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;I)Lde/gdata/mobilesecurity/sigfile/MalwareType;

    move-result-object v1

    .line 66
    invoke-direct {p0, p4, p5}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/sigfile/MalwareName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/sigfile/MalwareType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, p3, v4}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/sigfile/MalwareType;->getCategory()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lde/gdata/mobilesecurity/sigfile/MalwareName;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public declared-synchronized getSignatureFileDate(Landroid/content/Context;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    if-nez v0, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    .line 277
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigDate()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 279
    :goto_1
    monitor-exit p0

    return-object v0

    .line 274
    :cond_1
    :try_start_1
    const-string v0, "version.sig"

    goto :goto_0

    .line 279
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a:Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignatureVersion(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    .line 292
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigVersion()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    :goto_1
    monitor-exit p0

    return v0

    .line 289
    :cond_1
    :try_start_1
    const-string v0, "version.sig"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpdateFileList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/sigfile/SigVersion$SigFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 514
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion;

    move-result-object v2

    .line 515
    sget-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    if-nez v1, :cond_0

    .line 516
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-direct {p0, p1, v1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;Ljava/lang/String;)Lde/gdata/mobilesecurity/sigfile/SigVersion;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    .line 519
    :cond_0
    if-eqz v2, :cond_1

    sget-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 523
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    .line 516
    :cond_2
    :try_start_1
    const-string v1, "version.sig"

    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigVersion()I

    move-result v1

    sget-object v3, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getSigVersion()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/sigfile/SigVersion;->getCompleteFileList()Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized installDiffSigUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 28

    .prologue
    .line 612
    monitor-enter p0

    .line 614
    :try_start_0
    invoke-static/range {p2 .. p2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 615
    const/4 v3, 0x0

    .line 617
    invoke-direct/range {p0 .. p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_0
    :try_start_1
    const-string v2, "install update started"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->logFreeMemory(Landroid/content/Context;Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 624
    const/4 v3, 0x0

    .line 625
    const/4 v2, 0x0

    .line 626
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [B

    .line 627
    invoke-virtual {v9, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1c

    .line 628
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v4

    .line 629
    new-array v5, v4, [B

    .line 630
    invoke-virtual {v9, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-ne v6, v4, :cond_1c

    .line 631
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v3

    .line 632
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e([BI)Ljava/util/Date;

    move-result-object v2

    move-object v12, v2

    move v13, v3

    .line 636
    :goto_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 637
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 638
    const/4 v3, 0x0

    .line 639
    const/4 v4, 0x0

    .line 640
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;I)Lde/gdata/mobilesecurity/sigfile/MalwareType;

    .line 641
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 642
    sget-object v2, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 643
    if-le v2, v3, :cond_1b

    :goto_2
    move v3, v2

    .line 644
    goto :goto_1

    .line 645
    :cond_1
    sget-object v2, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 646
    if-le v2, v4, :cond_1a

    :goto_4
    move v4, v2

    .line 647
    goto :goto_3

    .line 649
    :cond_2
    new-instance v2, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;-><init>()V

    .line 650
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 651
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 652
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 653
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 654
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 655
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 657
    const/4 v5, 0x2

    new-array v0, v5, [B

    move-object/from16 v19, v0

    move v5, v3

    .line 658
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move-object/from16 v0, v19

    array-length v10, v0

    if-ne v3, v10, :cond_12

    .line 659
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v20

    .line 660
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 661
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move/from16 v0, v20

    if-ne v3, v0, :cond_11

    .line 662
    const/4 v3, 0x0

    aget-byte v22, v21, v3

    .line 665
    if-nez v22, :cond_6

    .line 666
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v23

    .line 667
    const/4 v3, 0x5

    aget-byte v10, v21, v3

    .line 668
    new-array v11, v10, [B

    .line 669
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v10, :cond_3

    .line 670
    add-int/lit8 v24, v3, 0x6

    aget-byte v24, v21, v24

    aput-byte v24, v11, v3

    .line 669
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 671
    :cond_3
    new-instance v24, Ljava/lang/String;

    const-string v3, "UTF8"

    move-object/from16 v0, v24

    invoke-direct {v0, v11, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 672
    add-int/lit8 v3, v10, 0x6

    aget-byte v25, v21, v3

    .line 673
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 674
    const/4 v11, -0x1

    .line 675
    sget-object v3, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 676
    sget-object v3, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/gdata/mobilesecurity/sigfile/MalwareType;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/sigfile/MalwareType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v10

    .line 681
    :goto_7
    if-gez v3, :cond_5

    .line 682
    add-int/lit8 v3, v5, 0x1

    .line 683
    sget-object v5, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lde/gdata/mobilesecurity/sigfile/MalwareType;

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v11, v0, v1}, Lde/gdata/mobilesecurity/sigfile/MalwareType;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v3

    .line 686
    :cond_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_a

    .line 692
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b([BI)I

    move-result v23

    .line 693
    const/4 v3, 0x5

    aget-byte v10, v21, v3

    .line 694
    new-array v11, v10, [B

    .line 695
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v10, :cond_7

    .line 696
    add-int/lit8 v24, v3, 0x6

    aget-byte v24, v21, v24

    aput-byte v24, v11, v3

    .line 695
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 697
    :cond_7
    new-instance v24, Ljava/lang/String;

    const-string v3, "UTF8"

    move-object/from16 v0, v24

    invoke-direct {v0, v11, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 698
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 699
    const/4 v11, -0x1

    .line 700
    sget-object v3, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 701
    sget-object v3, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v10

    .line 706
    :goto_9
    if-gez v3, :cond_9

    .line 707
    add-int/lit8 v3, v4, 0x1

    .line 708
    sget-object v4, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v24

    invoke-virtual {v4, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    .line 711
    :cond_9
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_a
    const/16 v3, 0xa

    move/from16 v0, v22

    if-lt v0, v3, :cond_11

    const/16 v3, 0xf

    move/from16 v0, v22

    if-gt v0, v3, :cond_11

    .line 717
    const/16 v3, 0xa

    move/from16 v0, v22

    if-eq v0, v3, :cond_b

    const/16 v3, 0xb

    move/from16 v0, v22

    if-ne v0, v3, :cond_c

    :cond_b
    const/4 v3, 0x1

    move v11, v3

    .line 718
    :goto_a
    if-eqz v11, :cond_d

    const/4 v3, 0x0

    move v10, v3

    .line 719
    :goto_b
    new-instance v23, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;-><init>(Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;)V

    .line 720
    const/4 v3, 0x0

    :goto_c
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ge v3, v0, :cond_e

    .line 721
    move-object/from16 v0, v23

    iget-object v0, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->hash:[B

    move-object/from16 v24, v0

    add-int/lit8 v25, v10, 0x1

    add-int v25, v25, v3

    aget-byte v25, v21, v25

    aput-byte v25, v24, v3

    .line 720
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 717
    :cond_c
    const/4 v3, 0x0

    move v11, v3

    goto :goto_a

    .line 718
    :cond_d
    const/4 v3, 0x4

    move v10, v3

    goto :goto_b

    .line 722
    :cond_e
    add-int/lit8 v3, v20, -0x9

    new-array v3, v3, [B

    move-object/from16 v0, v23

    iput-object v3, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    .line 723
    if-nez v11, :cond_f

    .line 724
    move-object/from16 v0, v23

    iget-object v11, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    const/16 v20, 0x0

    const/4 v3, 0x1

    aget-byte v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v11, v20

    .line 725
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->a([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 726
    move-object/from16 v0, v23

    iget-object v11, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    const/16 v20, 0x1

    rem-int/lit16 v0, v3, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v11, v20

    .line 727
    move-object/from16 v0, v23

    iget-object v11, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    const/16 v20, 0x2

    shr-int/lit8 v3, v3, 0x8

    rem-int/lit16 v3, v3, 0x100

    int-to-byte v3, v3

    aput-byte v3, v11, v20

    .line 728
    move-object/from16 v0, v23

    iget-object v3, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    const/4 v11, 0x3

    const/16 v20, 0x4

    aget-byte v20, v21, v20

    aput-byte v20, v3, v11

    .line 730
    :cond_f
    const/4 v3, 0x0

    :goto_d
    move-object/from16 v0, v23

    iget-object v11, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    array-length v11, v11

    sub-int/2addr v11, v10

    if-ge v3, v11, :cond_10

    .line 731
    move-object/from16 v0, v23

    iget-object v11, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    add-int v20, v3, v10

    add-int/lit8 v24, v3, 0x9

    add-int v24, v24, v10

    aget-byte v24, v21, v24

    aput-byte v24, v11, v20

    .line 730
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 733
    :cond_10
    new-instance v3, Ljava/math/BigInteger;

    move-object/from16 v0, v23

    iget-object v11, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    move-object/from16 v0, v23

    iget-object v0, v0, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate$DiffSigEntry;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v11, v10, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/math/BigInteger;-><init>([B)V

    .line 735
    packed-switch v22, :pswitch_data_0

    :cond_11
    :goto_e
    move v3, v4

    move v4, v5

    :goto_f
    move v5, v4

    move v4, v3

    .line 757
    goto/16 :goto_5

    .line 737
    :pswitch_0
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    move-object/from16 v0, v23

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    move v4, v5

    goto :goto_f

    .line 740
    :pswitch_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    move v4, v5

    goto :goto_f

    .line 743
    :pswitch_2
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    move v4, v5

    .line 744
    goto :goto_f

    .line 746
    :pswitch_3
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    move v4, v5

    .line 747
    goto :goto_f

    .line 749
    :pswitch_4
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    move-object/from16 v0, v23

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    move v4, v5

    goto :goto_f

    .line 752
    :pswitch_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    .line 773
    :catch_0
    move-exception v2

    move-object v3, v9

    .line 774
    :goto_10
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 775
    const/4 v2, 0x0

    move-object v9, v3

    .line 777
    :goto_11
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/InputStream;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyFileHandler;->cleanup([Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 779
    monitor-exit p0

    return v2

    .line 760
    :cond_12
    const/4 v10, 0x1

    .line 761
    :try_start_4
    const-string v3, "version.sig"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v13, v12}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->writeVersionSig(Landroid/content/Context;Ljava/lang/String;ILjava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v10, 0x0

    .line 762
    :cond_13
    const-string v3, "names.sig"

    sget-object v4, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    sget-object v5, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->writeNamesSig(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 763
    const/4 v10, 0x0

    .line 764
    :cond_14
    const-string v4, "apph.sig"

    const-string v5, "app.sig"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->writeSig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 765
    const/4 v10, 0x0

    .line 766
    :cond_15
    const-string v4, "fileh.sig"

    const-string v5, "file.sig"

    move-object/from16 v3, p1

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lde/gdata/mobilesecurity/sigfile/SignatureDbDiffUpdate;->writeSig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 767
    const/4 v2, 0x0

    .line 769
    :goto_12
    if-eqz v2, :cond_16

    const-string v3, ".dupd"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->installSigUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 771
    :cond_16
    const-string v3, "install update finished"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->logFreeMemory(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_11

    .line 612
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 773
    :catch_1
    move-exception v2

    goto :goto_10

    :cond_17
    move v2, v10

    goto :goto_12

    :cond_18
    move v3, v11

    goto/16 :goto_9

    :cond_19
    move v3, v11

    goto/16 :goto_7

    :cond_1a
    move v2, v4

    goto/16 :goto_4

    :cond_1b
    move v2, v3

    goto/16 :goto_2

    :cond_1c
    move-object v12, v2

    move v13, v3

    goto/16 :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized installSigUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 553
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    .line 554
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    .line 555
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    .line 556
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    .line 558
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "version.sig"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "names.sig"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "fileh.sig"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "file.sig"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "apph.sig"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "app.sig"

    aput-object v3, v1, v2

    .line 561
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v2, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 562
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSignatureUpdateInProgress(Z)V

    .line 564
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 566
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 567
    invoke-virtual {p1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 568
    invoke-virtual {p1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    .line 573
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSignatureUpdateInProgress(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchBackToSigFilesFromRawResources(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 582
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->b:Ljava/util/HashMap;

    .line 583
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->c:Ljava/util/HashMap;

    .line 584
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->d:Lde/gdata/mobilesecurity/sigfile/SigVersion;

    .line 585
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    .line 588
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 589
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSignatureUpdateInProgress(Z)V

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v3

    .line 593
    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 594
    const-string v6, ".sig"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ".sig"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".sig.dupd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 595
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 600
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->e:Ljava/lang/Boolean;

    .line 601
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSignatureUpdateInProgress(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    monitor-exit p0

    return-void
.end method

.method public test(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 842
    return-void
.end method
