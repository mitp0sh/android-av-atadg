.class public Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;
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
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->a:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static addPackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 30
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
    .line 16
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->b:Ljava/util/List;

    return-object v0
.end method

.method public static removePackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V
    .locals 2

    .prologue
    .line 34
    sget-object v1, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lde/gdata/mobilesecurity/receiver/b;

    invoke-direct {v3, p0, v0, v1, p2}, Lde/gdata/mobilesecurity/receiver/b;-><init>(Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 64
    return-void

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
