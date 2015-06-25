.class public Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->a:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static addPackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V
    .locals 2

    .prologue
    .line 34
    sget-object v1, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->b:Ljava/util/List;

    return-object v0
.end method

.method public static removePackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V
    .locals 2

    .prologue
    .line 40
    sget-object v1, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 50
    if-nez p2, :cond_0

    move-object v2, v0

    .line 51
    :goto_0
    if-nez p2, :cond_1

    .line 54
    :goto_1
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 62
    :goto_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lde/gdata/mobilesecurity/receiver/a;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/a;-><init>(Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 101
    return-void

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageAddedReceiver: insufficiant package information: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_2
.end method
