.class Lde/gdata/mobilesecurity/mms/json/d;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/mms/json/c;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/mms/json/c;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/d;->a:Lde/gdata/mobilesecurity/mms/json/c;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 175
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/d;->a:Lde/gdata/mobilesecurity/mms/json/c;

    iget-object v1, v0, Lde/gdata/mobilesecurity/mms/json/c;->c:Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/d;->a:Lde/gdata/mobilesecurity/mms/json/c;

    iget-object v0, v0, Lde/gdata/mobilesecurity/mms/json/c;->c:Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
