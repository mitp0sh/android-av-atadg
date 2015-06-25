.class public Lde/gdata/mobilesecurity/util/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    .line 21
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/MediaFile;->b:Landroid/content/ContentResolver;

    .line 22
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/MediaFile;->c:Landroid/net/Uri;

    .line 23
    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    array-length v2, v2

    if-lez v2, :cond_2

    move v0, v1

    .line 34
    goto :goto_0

    .line 38
    :cond_2
    const-string v3, "_data=?"

    .line 39
    new-array v4, v0, [Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 41
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 43
    const-string v5, "_data"

    iget-object v6, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v5, p0, Lde/gdata/mobilesecurity/util/MediaFile;->b:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 47
    :try_start_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->b:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    :try_start_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->b:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :goto_2
    :try_start_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->b:Landroid/content/ContentResolver;

    iget-object v5, p0, Lde/gdata/mobilesecurity/util/MediaFile;->c:Landroid/net/Uri;

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :cond_3
    :goto_3
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    :catch_1
    move-exception v2

    .line 54
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 58
    :catch_2
    move-exception v2

    .line 59
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/MediaFile;->a:Ljava/io/File;

    return-object v0
.end method
