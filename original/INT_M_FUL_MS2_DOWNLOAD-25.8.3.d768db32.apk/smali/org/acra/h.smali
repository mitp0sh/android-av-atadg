.class Lorg/acra/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/acra/h;->a:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 157
    instance-of v0, p1, Lorg/acra/BaseCrashReportDialog;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/acra/h;->a:Lorg/acra/ErrorReporter;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 163
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
