.class Lde/gdata/mobilesecurity/mms/json/b;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/mms/json/a;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/mms/json/a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/b;->a:Lde/gdata/mobilesecurity/mms/json/a;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/b;->a:Lde/gdata/mobilesecurity/mms/json/a;

    iget-object v1, v0, Lde/gdata/mobilesecurity/mms/json/a;->c:Lde/gdata/mobilesecurity/mms/json/AppPutRequest;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/b;->a:Lde/gdata/mobilesecurity/mms/json/a;

    iget-object v0, v0, Lde/gdata/mobilesecurity/mms/json/a;->c:Lde/gdata/mobilesecurity/mms/json/AppPutRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
