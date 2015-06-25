.class Lde/gdata/mobilesecurity/activities/debug/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/l;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 166
    new-instance v0, Lde/gdata/webportal/android/Preferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/l;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lde/gdata/webportal/android/Preferences;->setWebPortalLastSync(J)V

    .line 167
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/l;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/webportal/android/WebPortalSyncService;->startSync(Landroid/content/Context;)V

    .line 168
    return-void
.end method
