.class Lorg/acra/collector/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 56
    new-instance v2, Lorg/acra/util/BoundedLinkedList;

    invoke-direct {v2, p2}, Lorg/acra/util/BoundedLinkedList;-><init>(I)V

    .line 58
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v0

    .line 64
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_1
    if-eqz v0, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/acra/util/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v0

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v1}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    .line 72
    invoke-virtual {v2}, Lorg/acra/util/BoundedLinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/acra/collector/CollectorUtil;->safeClose(Ljava/io/Reader;)V

    throw v0
.end method
